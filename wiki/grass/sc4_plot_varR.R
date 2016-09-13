
library(raster)
library(rasterVis)

raster=raster("vrm.tif")

postscript(paste("vrm.ps",sep=""),width=8 , height=8  , paper="special" ,  horizo=F  )

max=0.003 ; min=0 ; des="Vector Ruggedness Measure - Median"

n=100
at=seq(min,max,length=n)
colR=colorRampPalette(c("blue","green","yellow", "orange" , "red", "brown", "black" ))
 
cols=colR(n)
res=1e6 
par(cex.axis=2, cex.lab=2, cex.main=2, cex.sub=2)
raster[raster>max] <- max
raster[raster<min] <- min
print ( levelplot(raster,col.regions=colR(n),  scales=list(cex=1.5) ,   cuts=99,at=at,colorkey=list(space="right",adj=2 , labels=list( cex=1.5)), panel=panel.levelplot.raster,   margin=T,maxpixels=res,ylab="", xlab=list(paste(des,sep="") , cex=1.5 , space="left" ) ,useRaster=T ) + layer(sp.polygons(coast ,  fill="white" )  ) )

dev.off()
system("evince vrm.ps")
