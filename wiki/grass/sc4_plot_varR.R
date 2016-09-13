library(raster)
library(rasterVis)

raster=raster("vrm.tif")

png("vrm.png",   res=100 , width = 800, height = 800  )

max=0.004 ; min=0 ; des="Vector Ruggedness Measure"

n=100
at=seq(min,max,length=n)
colR=colorRampPalette(c("blue","green","yellow", "orange" , "red", "brown", "black" ))
 
cols=colR(n)
res=1e7 
par(cex.axis=2, cex.lab=2, cex.main=2, cex.sub=2)
raster[raster>max] <- max
raster[raster<min] <- min
print ( levelplot(raster,col.regions=colR(n),  scales=list(cex=1.5) ,   cuts=99,at=at,colorkey=list(space="right",adj=2 , labels=list( cex=1.5)), panel=panel.levelplot.raster,   margin=T,maxpixels=res,ylab="", xlab=list(paste(des,sep="") , cex=1.5 , space="left" ) ,useRaster=T )  )

dev.off()


raster=raster("geom_1KMsha.tif")

png("geom_1KMsha.png",   res=100 , width = 800, height = 800  )

min=0.234 ; max=2.220 ; des="Shanon index of geomorphic landform"
n=100
at=seq(min,max,length=n)
colR=colorRampPalette(c("blue","green","yellow", "orange" , "red", "brown", "black" ))
 
cols=colR(n)
res=1e7 
par(cex.axis=2, cex.lab=2, cex.main=2, cex.sub=2)
raster[raster>max] <- max
raster[raster<min] <- min
print ( levelplot(raster,col.regions=colR(n),  scales=list(cex=1.5) ,   cuts=99,at=at,colorkey=list(space="right",adj=2 , labels=list( cex=1.5)), panel=panel.levelplot.raster,   margin=T,maxpixels=res,ylab="", xlab=list(paste(des,sep="") , cex=1.5 , space="left" ) ,useRaster=T ) )

dev.off()



