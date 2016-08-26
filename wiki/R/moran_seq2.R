suppressMessages(library(raster))
suppressMessages(library(rgdal))

# Returns "RasterLayer"
rasterD <- raster('fagus_sylvatica/2020_TSSP_IP-ENS-A2-SP20_43023435.tif')

# Returns "SpatialPolygonsDataFrame"
s <- readOGR('poly_fr_10poly.shp', 'poly_fr_10poly')
npoly <- nrow(s)

# Sequential for loop
Moran <- double(npoly)
for (i in 1:npoly) {
  p <- s[i,]                                # SpatialPolygonsDataFrame
  rasterDp <- crop(rasterD, p, snap='out')  # RasterLayer
  rasterDpMask <- mask(rasterDp, p)         # RasterLayer
  Moran[i] <- Moran(rasterDpMask)
}
res <- data.frame(id=s@data$id, Moran=Moran)
print(res)
