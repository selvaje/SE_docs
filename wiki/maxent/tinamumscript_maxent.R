install.packages("dismo")
install.packages("XML")
install.packages("maptools")
install.packages("rgeos")
install.packages("rasterVis")

library(raster)
library (dismo)
library (XML)
library (rgeos)
library (maptools)
library(sp)
library(rasterVis)
library(rgdal)
library(rJava)

# search where you OS save the R libray use the .libPaths() 
# in MAC should be /Library/Frameworks/R.framework/Resources/library 
# copy the maxent.jar under R/x86_64-pc-linux-gnu-library/3.3/dismo/java/ 

##################################
# create a directory
dir.create("~/Solitary_Tinamou/")
setwd("~/Solitary_Tinamou/")

############################

## download point data of occurrences from the Global Biodiversity Information Facility (GBIF) dataset 

gbif_points = gbif('Tinamus' , 'solitarius' , download=T , geo=T)
gbif_points=gbif_points[!is.na(gbif_points$lat),]

## get e-bird lat_long_ebd.txt file and save in the ~/Solitary_Tinamou/

download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/lat_long_ebd.txt", "~/Solitary_Tinamou/lat_long_ebd.txt")
ebird = read.table("~/Solitary_Tinamou/lat_long_ebd.txt" ,header = TRUE  )

#### import a presence dataset from parks

download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/Tinamus_solitarius_rowids1.asc" , "~/Solitary_Tinamou/Tinamus_solitarius_rowids1.asc")
parks = read.table ("~/Solitary_Tinamou/Tinamus_solitarius_rowids1.asc" , header = TRUE  )

#### import expert range

download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/iucn_birds_proj.dbf" ,
              "~/Solitary_Tinamou/iucn_birds_proj.dbf")
download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/iucn_birds_proj.prj" , 
              "~/Solitary_Tinamou/iucn_birds_proj.prj")
download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/iucn_birds_proj.shp" ,  "~/Solitary_Tinamou/iucn_birds_proj.shp")
download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/iucn_birds_proj.shx" , 
              "~/Solitary_Tinamou/iucn_birds_proj.shx")

#  pay attention to change this directory /home/selv/ with yours 
tin_range=readOGR("/home/selv/Solitary_Tinamou/iucn_birds_proj.shp","iucn_birds_proj")
tin_range=spTransform(tin_range,CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))

## Build a combined dataset (with source, presence and coordinates)
points=rbind.data.frame(
  data.frame(src="gbif",obs=1,lat=gbif_points$lat,lon=gbif_points$lon),
  data.frame(src="ebird",obs=1,lat=ebird$LATITUDE,lon=ebird$LONGITUDE),
  data.frame(src="parks",obs=parks$presence,lat=parks$st_y,lon=parks$st_x)  
)

## turn it into a spatial dataframe and define projection
coordinates(points)=c('lon','lat')
projection(points)="+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"

## Create a combined src_presence field for easy plotting
points$type=paste(points$src,points$obs,sep="_")

##import a world country boundary to ground the map

download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/world_country_admin_boundary_shapefile_with_fips_codes.dbf" ,
              "~/Solitary_Tinamou/world_country_admin_boundary_shapefile_with_fips_codes.dbf")
download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/world_country_admin_boundary_shapefile_with_fips_codes.shp" ,
              "~/Solitary_Tinamou/world_country_admin_boundary_shapefile_with_fips_codes.shp")
download.file("https://raw.githubusercontent.com/selvaje/spatial-ecology-codes/master/wiki/maxent/world_country_admin_boundary_shapefile_with_fips_codes.shx" ,
              "~/Solitary_Tinamou/world_country_admin_boundary_shapefile_with_fips_codes.shx")

World  = readShapePoly ("~/Solitary_Tinamou/world_country_admin_boundary_shapefile_with_fips_codes.shp")
projection(World)="+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"

## check out the data
spplot(points,zcol="type",pch=1:5,col.regions=c("red","red","black","red","black"))+
  layer(sp.polygons( World) ,xlim=c(-100 , -10) , ylim=c(-30,0) ) ;

### uh oh, there are some records out in the ocean (typical GBIF!)
### There are several ways to handle this, one is to clip by the 'expert' range of the species.

## plot it again with the range
spplot(points,zcol="type",pch=1:5,col.regions=c("red","red","black","red","black"))+
  layer(sp.polygons( World))+
  layer(sp.polygons(tin_range,fill="grey"),under=T)

## So there are a few points just outside the range, but those in the ocean are most likely wrong.  
## Let's add the distance to the range polygon as a way to filter the observations:
## First we need a equidistant projection to do the calculation
dproj=CRS("+proj=eqc +lat_ts=0 +lat_0=0 +lon_0=0 +x_0=0 +y_0=0 +a=6371007 +b=6371007 +units=m +no_defs") 
points$dist=gDistance(spTransform(points,dproj),spTransform(tin_range,dproj),byid=T)[1,]
## that adds 'distance' (in meters) from each point to the polygon, check out the values:
hist(points$dist/1000,xlab="km to expert range")
## so some points are > 2000km from the range, let's drop any more than 10km
points=points[points$dist<10000,]

## plot it again with the range
spplot(points,zcol="type",pch=1:5,col.regions=c("red","red","black","red","black"))+
  layer(sp.polygons( World))+
  layer(sp.polygons(tin_range,fill="grey"),under=T)
## that looks better.


################################################################################
## Import some evironmental data (Climate & NPP) and align it to a common grid

### download CHELSA data http://chelsa-climate.org/ 

download.file("https://www.wsl.ch/lud/chelsa/data/bioclim/integer/CHELSA_bio10_12_land.7z" , "~/Solitary_Tinamou/CHELSA_bio10_12_land.7z" )
download.file("https://www.wsl.ch/lud/chelsa/data/bioclim/integer/CHELSA_bio10_01_land.7z" , "~/Solitary_Tinamou/CHELSA_bio10_01_land.7z" )

# be sure 7z is installed 
# http://7-zip.org/download.html 
# http://www.kekaosx.com/en/

system("7z e  CHELSA_bio10_12_land.7z")
system("7z e  CHELSA_bio10_01_land.7z")

prec.glob = raster("CHELSA_bio10_12.tif")  ; NAvalue(prec.glob) <- -32768
temp.glob = raster("CHELSA_bio10_1.tif")   ; NAvalue(temp.glob) <- -32768

# set the extend 
ext.glob <- extent (-180,180,-90,84)

setExtent (prec.glob , ext.glob)
setExtent (temp.glob , ext.glob)

# crop and reset the extend 
ext.crop <- extent (-60,-30,-30,0)
prec = crop(prec.glob , ext.crop) ; setExtent (prec , ext.crop)
temp = crop(temp.glob , ext.crop) ; setExtent (temp , ext.crop)


### download landcover data http://www.earthenv.org/landcover 
download.file("http://data.earthenv.org/consensus_landcover/with_DISCover/consensus_full_class_1.tif" , "~/Solitary_Tinamou/consensus_full_class_1.tif")  
download.file("http://data.earthenv.org/consensus_landcover/with_DISCover/consensus_full_class_2.tif" , "~/Solitary_Tinamou/consensus_full_class_2.tif")  
download.file("http://data.earthenv.org/consensus_landcover/with_DISCover/consensus_full_class_3.tif" , "~/Solitary_Tinamou/consensus_full_class_3.tif")  
download.file("http://data.earthenv.org/consensus_landcover/with_DISCover/consensus_full_class_4.tif" , "~/Solitary_Tinamou/consensus_full_class_4.tif")  

forest1.glob = raster("consensus_full_class_1.tif")
forest2.glob = raster("consensus_full_class_2.tif")
forest3.glob = raster("consensus_full_class_3.tif")
forest4.glob = raster("consensus_full_class_4.tif")

forest1 = crop(forest1, ext.crop)
forest2 = crop(forest2, ext.crop)
forest3 = crop(forest3, ext.crop)
forest4 = crop(forest4, ext.crop)

## get total % forest
forest= sum (forest1 + forest2 + forest1 + forest3) 
names(forest)="forest"
names(temp)="temp"
names(prec)="prec"

env=stack( forest , prec , temp  )
##  List all available environmental data
names(env)

## See how the points compare to temperature
var="temp"
  levelplot(env[[var]],col.regions=terrain.colors(20),margin=F)+
  layer(sp.polygons(tin_range))+
  layer(sp.points(points[points$obs==1,],col="red"))    #add presences

## variable selection is tricky business and we're not going to dwell on it here...  
plot(env)

## add the environmental data to each point
pointsd=extract(env,points,sp=T)

## now check out some bivariate plots
## feel free to explore other variables

xyplot(forest~prec,groups=type,data=pointsd@data,auto.key=T)+
  layer(panel.ellipse(x,y,groups=pointsd$type,subscripts=T,level=.68))

xyplot(forest~temp,groups=type,data=pointsd@data,auto.key=T)+
  layer(panel.ellipse(x,y,groups=pointsd$type,subscripts=T,level=.68))

xyplot(forest~temp,groups=type,data=pointsd@data,auto.key=T)+
  layer(panel.ellipse(x,y,groups=pointsd$type,subscripts=T,level=.68))

## Fit a very simple MAXENT model using a selection of predictors 

maxmod = maxent(env,points)

## Show the model summary
maxmod

## Use the model to predict p(presence) for all sites
max_pred = predict(maxmod , env)

## Plot the predictions
levelplot(max_pred,col.regions=rainbow(20,start=.2,end=.9),margin=F)+
  layer(sp.polygons(tin_range,lwd=2))+
  layer(sp.points(points[points$obs==1,],col="red",cex=1,lwd=1))    #add presences

