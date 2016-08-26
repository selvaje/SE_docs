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

# Parallel, iterating over rows themselves 
Moran <-
  foreach(p=isplitRows(s, chunkSize=1), .combine='c',
          .packages=c('raster', 'rgdal')) %dopar% {
    rasterDp <- crop(rasterD, p, snap='out')
    rasterDpMask <- mask(rasterDp, p)
    Moran(rasterDpMask)
  }
res <- data.frame(id=s@data$id, Moran=Moran)
print(res)
