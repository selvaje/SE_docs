suppressMessages(library(raster))
suppressMessages(library(rgdal))
suppressMessages(library(doParallel))
suppressMessages(library(itertools))

nw <- detectCores()
cl <- makePSOCKcluster(nw)
registerDoParallel(cl)

# Returns "RasterLayer"
rasterD <- raster('fagus_sylvatica/2020_TSSP_IP-ENS-A2-SP20_43023435.tif')

# Returns "SpatialPolygonsDataFrame"
s <- readOGR('poly_fr_10poly.shp', 'poly_fr_10poly')
npoly <- nrow(s)

# Parallel, one task chunk per worker
Moran <-
  foreach(ss=isplitRows(s, chunks=nw), .combine='c',
          .packages=c('raster', 'rgdal')) %dopar% {
    npoly <- nrow(ss)
    Moran <- double(npoly)
    for (i in 1:npoly) {
      rasterDp <- crop(rasterD, ss[i,], snap='out')
      rasterDpMask <- mask(rasterDp, ss[i,])
      Moran[i] <- Moran(rasterDpMask)
    }
    Moran
  }
res <- data.frame(id=s@data$id, Moran=Moran)
print(res)
