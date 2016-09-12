suppressMessages(library(raster))
suppressMessages(library(rgdal))
suppressMessages(library(doSNOW))

nw <- parallel::detectCores()
cl <- makeSOCKcluster(nw)
registerDoSNOW(cl)

# Simple parallel kmeans
pkmeans <- function(x, centers, iter.max=10, nstart=getDoParWorkers()) {
  # Combine function returns best result seen so far
  best <- function(...) {
    results <- list(...)
    i <- sapply(results, function(result) result$tot.withinss)
    results[[which.min(i)]]
  }

  # Perform a kmeans on each worker by splitting up nstart
  foreach(ns=idiv(nstart, chunks=getDoParWorkers()),
          .combine='best', .multicombine=TRUE) %dopar% {
    kmeans(x, centers, iter.max=iter.max, nstart=ns)
  }
}

# Return polygons by cluster
getcluster <- function(spdf, centers) {
  # Assume each feature has a single polygon
  npoly <- nrow(spdf)
  if (npoly > centers) {
    x <- t(sapply(1:npoly, function(i) spdf[i,]@polygons[[1]]@labpt))
    pkmeans(x, centers=centers)$cluster
  } else {
    1:npoly
  }
}

ipolygons <- function(spdf, f) {
  it <- isplit(1:nrow(spdf), f)

  nextEl <- function() {
    x <- nextElem(it)
    list(value=spdf[x$value,], key=x$key)
  }

  object <- list(nextElem = nextEl)
  class(object) <- c('abstractiter', 'iter')
  object
}

print(proc.time())

cat('readOGR\n')
s <- readOGR('clc06_c311/clc06_c311.shp', 'clc06_c311')
print(proc.time())

cat('kmeans\n')
clusters <- getcluster(s, 1000 * nw)
print(proc.time())

cat('Moran\'s I\n')
pb <- txtProgressBar(max=length(unique(clusters)), style=3)
progress <- function(n) setTxtProgressBar(pb, n)
opts <- list(progress=progress)

res <-
  foreach(ssl=ipolygons(s, clusters), .combine='rbind', .inorder=FALSE,
          .options.snow=opts, .errorhandling='remove',
          .packages=c('raster', 'rgdal')) %dopar% {
    lrasterD <- raster('2020_TSSP_IM-ENS-A2-SP20_43023435.tif')
    ss <- ssl$value
    rasterDp <- crop(lrasterD, ss, snap='out')
    npoly <- nrow(ss)
    Moran <- double(npoly)
    for (i in 1:npoly) {
      x <- crop(rasterDp, ss[i,], snap='out')
      rasterDpMask <- mask(x, ss[i,])
      Moran[i] <- Moran(rasterDpMask)
    }
    data.frame(id=ss@data$id, cluster=ssl$key[[1]], Moran=Moran)
  }

cat(sprintf('\nGot %d results\n', nrow(res)))
print(proc.time())
