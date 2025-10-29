# GeoComp & Modelling 2022 course
## Geocomputation and Modelling for Vector-borne Disease
###


**Online teaching or QA session of an attended recorded lecture: October - December 2022, 8 weeks**

* Every Tuesday: starting from October 11th, at 4PM - 6:45PM - Abuja, Nigeria (8AM - 10:45AM  - Seattle, WA, USA; 5PM - 7:45PM Rome, Italy)
* Every Thursday: ending on December 1st, at 4PM - 6:45PM - Abuja, Nigeria (8AM - 10:45AM - Seattle, WA, USA; 5PM - 7:45PM Rome, Italy)

**On-site workshop: 30 January 2023 - 11 February 2023, 2 weeks in Nairobi, Kenya**

* Monday to Friday, from January 30th to February 10th at 9AM - 5PM.

**Course goals**

* All participants equipped with necessary skills to run and modify Blackfly habitat suitability model
	* Foundational skills include:
* Learning open source tools for GIS and RS applications.
	* Acquiring command line utilities for spatial/temporal data under Linux OS.
	* Acquiring command line utilities and ML theoretical foundation for environmental application.
	* Developing data processing skills.
	* Independent learning, critical thinking, problem solving.
* Blackfly suitability model-specific skills include:
	* In-depth comprehension of random forest modelling techniques
* Upon completion of the course, you should be able to:
	* Apply the process of science, by conducting, analysing, and interpreting findings related to GIS & RS project in the 	* framework of ML applications
	* Use quantitative reasoning for statistical/spatial analysis
	* Convey your understanding of environmental phenomenons
	* Continue the development and maintenance of the Blackfly habitat suitability model



### Class roster  ###

  - [Class roster with the student names and their affiliation](http://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_modelling_10-11_2022_foto/course_geocomp_modelling_10-11_2022_roster.html)

### Syllabus ###

Below we are going to list day by day the final syllabus with the relatives links to the materials and recorded video.

### Geocomputation lectures session

#### Lecture 1: 11th of October, 2022.
Getting started: knowing each other and course introduction (G. Amatulli, E. Stearns, T. Sethi)

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/0Qh_DmRZI043Ami9Mphu4VmVucSPrYN6nt3XiXcb9DxDZwwVSRjtxjkmYxu9Ur97.Ox--mL9fKAosDs8J). Please check your email for the pass-code (it will be the same pass-code for all recordings).

This session introduces the overall course program and Linux operating system.

* [Course objectives and schedule](http://spatial-ecology.net/docs/source/lectures/lect_20221011_FMOHCourse_introduction.pdf). (Tushar - 10min Lecture)
* Get to know each other: trainers and participants (20min Round-table )
* Course policy, homework, final project, trainers/students interactions.) (Tushar Sethi - 10min Lecture)
* Linux environment, why and what to use to handling BigData. (Giuseppe Amatulli - 20min Lecture)
* [SSpecies distribution modelling](http://spatial-ecology.net/docs/source/lectures/lect_20221011_SDM_Overview.pdf) (Erin Stearns - 20min Lecture)
* Troubleshooting the OSGeoLive Linux Virtual Machine installation. Previous to the class, follow the instruction at [Setting OSGeoLive for Spatial Ecology course](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html) for installing the Linux Virtual Machine.

#### Lecture 2: 13th of October, 2022.

This session meanly deal with installation issues on the virtual machine. Often errors are very similar among user, so pleas check carefully the material (text+video) at [Setting OSGeoLive for Spatial Ecology course](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html)

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/nJzAruAmllChx4gKUgy1_D97ZeiweTq4J6mLlGp0QEmdFVM8wru9swyRS0ZMieEL.tvoNuhS3fMycRyhd). Please check your email for the pass-code (it will be the same pass-code for all recordings).

#### Lecture 3: 18th of October, 2022.

Jump start into LINUX Bash programming (Giuseppe Amatulli)

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/AI6z2EIjPncaX3pwSP-OvzzRI3D8N7df7sBElOszmb1UMKs6iaBzL3tkFG9Oo-Ue.5zHot8__BVXczXnH). Please check your email for the pass-code (it will be the same pass-code for all recordings).

[View recorded lecture](https://youtu.be/IDfFa3ulC90) (see below for the time slot of each section) before the QA session at 4PM.  

* [Installation and introduction](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html)  to the [OSGeoLIve Linux Virtual Machine](http://live.osgeo.org/en/index.html) (Hands-on tutorial)
* The www.spatial-ecology.net tutorial platform (Hands-on tutorial)

* [Unix/Linux command line](http://spatial-ecology.net/docs/build/html/BASH/bashintro_osgeo.html) (Hands-on tutorial)
[Recorded lecture: 42:55 - 50:41; skip the jupyter-lab installation; 59:16 - 1:32:10](https://youtu.be/IDfFa3ulC90)  
Follow the web page and type the commands directly on the terminal.  

	* Starting with Bash
	* Special characters and Quoting
	* The most important commands - Unix/Linux Command Reference
	* Meta-characters and regular expression, their use.
	* Concatenate process (pipe).
	* String manipulation
* [Manipulate text files in bash](http://spatial-ecology.net/docs/build/html/BASH/bashinter_osgeo.html) (Hands-on tutorial).
[Recorded lecture: 1:36:15 - 2:19:00](https://youtu.be/IDfFa3ulC90)

	* Pattern matching
	* Sorting a file
	* Append the command result to a file
	* For loop and the use of variables
	* If condition in a for loop
	* Checking the flow statement
	* Debugging

**Suggested assignments:**

These assignments do not need to be delivered nonetheless we suggest doing it in order to get familiar with the bash command line topics. Below, some suggestions of possible operations:

* Get fast in navigating up and down in the directory using only the command line.
* Copy/move files from a directory to another directory.
* Search and use a command to copy a file from-to your pc to a Linux remote server.
* Get fast on using keyboard shortcuts.
* Perform a data download operation using wget or curl.
* Unzip/untar files.
* Get familiar with apt update && apt upgrade && apt install to maintain your OSGeoLIve Linux Virtual Machine and install new software.

#### Lecture 4: 20th of October, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/r1AsQ5FAZfMb8DLjz5Zd7A52wf7uS35jcO5Kmz-SBySUEY6x5f-zJCTQzTi1lhsZ.qqiTt1jhzatuvzDK). Please check your email for the pass-code (it will be the same pass-code for all recordings).

Same program of the 3rd lecture (see above).

#### Lecture 5: 25th of October, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/p3NnpW0PdvgrUFpEHdJIyjUbxbg4ipPAM6nMgaQ_qTOQb_JVRGMxVhIsIVnvoy91.nbgqmDirF_A6GdqV). Please check your email for the pass-code (it will be the same pass-code for all recordings).

Review of bash commands: [View recorded lecture: 00:00 - 41:30 ](https://youtu.be/gCQ33jknzZY) before the QA session at 4PM.

Discovering the power of AWK programming language: [View recorded lecture: 41:30 - 2:10:40](https://youtu.be/gCQ33jknzZY) before the QA session at 4PM.

This session is fundamental for data filtering and preparation, bulk data download, text files manipulation, descriptive statistics and basic mathematical operation on large files. Students will access, query, understand and clean up data, perform data filtering using bash command line. We use AWK which is an extremely versatile and powerful programming language for working on text files, performing data extraction and reporting or to squeeze data before importing them into R/python or other software types.

* [Welcome to AWK world](http://spatial-ecology.net/docs/build/html/AWK/awk.html). Why to use AWK command line (Lecture). [Recorded lecture: 41:30 - 1:24:50](https://youtu.be/gCQ33jknzZY).
* The basic commands, command syntax  (Hands on tutorial).
	* Built in variables
	* Import variables
	* String functions
	* Numerical functions
	* Query functions
	* Manipulate large files before importing in R
	* A study case: Manipulate thousand of text file with BASH and AWK
	* This session summarizes the use of BASH and AWK with a practical example of text file manipulation.

* [Explain GSIM text files](http://spatial-ecology.net/docs/build/html/CASESTUDY/manipulate_GSIM.html) (Lecture). [Recorded lecture: 1:25:10 - 2:05:20](https://youtu.be/gCQ33jknzZY)
	* Data exploration (Hands on tutorial).
	* Count number of observations
	* Count how many observations per date
	* Monthly MEAN distribution

#### Lecture 6: 27th of October, 2022.

Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/02svSwjJQpiZ3slbK66JYLcR7S1X28ULQJMyOBnNTK-cE4sRkCtrbZSXwNDMthc.VbcOUDjiiOSBw4Ak). Please check your email for the pass-code (it will be the same pass-code for all recordings).

[View recorded lecture](https://youtu.be/kBRW2Z5jX8M) before the QA session at 4PM.

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.

* Review of bash/awk commands: [View recorded lecture: 00:00 - 35:00 ](https://youtu.be/kBRW2Z5jX8M).

* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html) for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html). [Recorded lecture: 35:00 - 1:28:45 ](https://youtu.be/kBRW2Z5jX8M)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20220414_Floating_point.pdf) (Lecture). [Recorded lecture: 1:28:45 - 1:48:00 ](https://youtu.be/kBRW2Z5jX8M)
	* Understanding NoData Value. [Recorded lecture: 1:47:55 - 2:06:00 ](https://youtu.be/kBRW2Z5jX8M)
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* GDAL commands. [Recorded lecture: 2:06:00 - 2.19.43](https://youtu.be/kBRW2Z5jX8M)


**Compulsory assignments: Get familiar with the gdal/ogr command line topics.**

Download some raster files and use gdalinfo to understand the image in terms of number of bands, pixel resolution, minimum and maximum data, no data value, extent precision. Each student is going to show what has been download and explain the characteristic of the his/her raster.  

#### Lecture 7: 1st of November, 2022.

Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/ecnFNieT4fQj_KpbF_pV-koi-0qQOudWtw2N1IieBNmY_O6KxnA4UKDkIQeEm-Kh.m_6HmUC4mdodvR8Y). Please check your email for the pass-code (it will be the same pass-code for all recordings).

[View recorded lecture starting from 42:18](https://youtu.be/Yy5UaCOvuYo) before the QA session at 4PM.

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.

* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* GDAL commands. [Recorded lecture: 42:18 - 1:46:40](https://youtu.be/Yy5UaCOvuYo)
* [Multicore operation within gdal and pktools](http://spatial-ecology.net/docs/build/html/BASH/bashxargs_osgeo.html). [Recorded lecture: 1:46:40 - 2:11:45](https://youtu.be/Yy5UaCOvuYo)
	* Transform a simple “for loop” in multicore “for loop”
	* The use of .VRT for splitting and merging images

**Compulsory assignments: Get familiar with the GDAL/OGR command line topics.**

Download some raster files and use gdalinfo to understand the image in terms of number of bands, pixel resolution, minimum and maximum data, no data value, extent precision.

Moreover, create a jupyter-notebook and perform some raster or vector operations using the GDAL/OGR commands. Some operations may be: cropping the layers base on your study area extension, ensure that raster have been compressed properly (e.g. using -co COMPRESS=DEFLATE -co ZLEVEL=9 options), change pixel resolution, change projection, ensure that the nodata is set correctly.    

Each student is going to **show the jupyter-notebook** and explain the characteristic of the rasters/vectors and show the GDAL/OGR operations that has been performed.

#### Lecture 8: 3rd of November, 2022.

Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/0bc-iqg6XNQaNw3hnHKjRFH9GBTA-BQTc8VZg6gvMWAPmCGwiLwu441YBxolVo-C.RyhG6ce_SsN4F7GR). Please check your email for the pass-code (it will be the same pass-code for all recordings).

[View recorded lecture](https://youtu.be/atchsCMQf5A) before the QA session at 4PM.

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html) libraries. 

* [PKTOOLS](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) for raster and vector analysis. [Recorded lecture: 33:00 - 2.16.00](https://www.youtube.com/watch?v=atchsCMQf5A)  
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

**Compulsory assignments: Get familiar with the GDAL/OGR/PKTOOLS command line topics.**

Download some raster files and use gdalinfo to understand the image in terms of number of bands, pixel resolution, minimum and maximum data, no data value, extent precision.

Moreover, create a jupyter-notebook and perform some raster or vector operations using the GDAL/OGR commands. Some operations may be: cropping the layers base on your study area extension, ensure that raster have been compressed properly (e.g. using -co COMPRESS=DEFLATE -co ZLEVEL=9 options), change pixel resolution, change projection, ensure that the nodata is set correctly, calculate temporal average, set a mask in all the layers....etc.     

Each student is going to **show the jupyter-notebook** and explain the characteristic of the rasters/vectors and show the GDAL/OGR/PKTOOLS operations that has been performed.

**Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli).**

This section introduces a real example of satellite data [GLAD ARD](https://glad.umd.edu/ard/home) processing using [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html) and [PKTOOLS](http://pktools.nongnu.org/html/index.html) in a Bash environment. It is quite advanced so if you have full understood the previews lecture you can spend more time in watching the [Recorded lecture](https://www.youtube.com/watch?v=GfmCRNMtFfs)  

* [Temporal interpolation of landsat images](http://spatial-ecology.net/docs/build/html/CASESTUDY/temporal_interpolation.html) (A.)
	* Data download & cropping
	* Image characteristics
	* Temporal composite
	* Temporal interpolation
	* Plotting the temporal interpolation for band 1
	* Assessing the temporal interpolation
* [Temporal analysis: Approximation](http://spatial-ecology.net/docs/source/lectures/lect_20220426_Approximation.pdf)  (S.)
	* Polynomial Interpolation
	* Piecewise Interpolation
		* Cubic Spline
		* Hermite cubic spline
		* Akima
		* Steffen
	* Smoothing
		* Salvitsky-Golay filtering
		* Fourier Transform
		* Wavelet


#### Catch-up session 1: 8th of November, 2022.

Only supervision. Recorded lecture can be found [here](https://yale.zoom.us/rec/share/fc6bvkU8lwZQ42w4T2oGtHthW2lN9-NO98JK5V7LDRBPZDeS8rymLeWfdMv4v0zJ.oYa_eEn7CnDvsfkU). Please check your email for the pass-code (it will be the same pass-code for all recordings).

#### Catch-up session 2: 10th of November, 2022.

Only supervision assignment explanation. Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/ZgvdiB9yiBrFKZMNOqEODfgM6leXLq8jwuOgS2tK7beR3Lu_4D1RGYXIugQbdPuV.iOrRnaJaLk5PIoG0). Please check your email for the pass-code (it will be the same pass-code for all recordings).

#### Catch-up session 3: 15th of November, 2022.

Only supervision. 

#### Catch-up session 4: 17th of November, 2022.

Supervision and assignment solution explanation. Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/Fvvx3yTTp5jMcM0xKAL_ST7OtQFFOqj-f02MppS5M9ub7Rqz5Ivk1s4BW_PG_lSW._QC88gIP_SwIi8VN). Please check your email for the pass-code (it will be the same pass-code for all recordings).

**Assignment**

This assignment is compulsory and need to be delivered before 17th of November, 2022 12pm, Nigeria time.

Please use this jupyter file by adding cell-codes and cell-text with your solution. Save the file as *assignment_fall2022_name_surname.ipynb* and send as e-mail attachment to *g.amatulli@spatial-ecology.net* and *Erin.Stearns@gatesfoundation.org*.

The exercises are based on lectures and materials that we covered during the lectures.

Enter in your */media/sf_LVM_shared/my_SE_data/exercise/*, save there your *assignment_fall2022_name_surname.ipynb* and start to solve the exercises by adding new cell-codes and cell-text.

```
cd ~/SE_data
git pull
rsync -hvrPt --ignore-existing ~/SE_data/* /media/sf_LVM_shared/my_SE_data
cd /media/sf_LVM_shared/my_SE_data/exercise
mv assignment_fall2022.ipynb assignment_fall2022_name_surname.ipynb
jupyther-notebook ssignment_fall2022_name_surname.ipynb

```

[Assignment solutions](http://spatial-ecology.net/docs/build/html/ASSIGNMENTS/assignment_fall2022_solutions.html)

### Modelling lectures session

#### Lecture 9:22nd of November, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/HO3xK4z9ZHj5Q-qzBLQT7rF7Am9hYCqxQ8glStrUq18iI-ouZRtX-1ZHD6q1cVJ8.y3kZtqolbl5xparY). Please check your email for the pass-code (it will be the same pass-code for all recordings).

* [GIS for species distribution](http://spatial-ecology.net/docs/source/lectures/lect_20221122_GIS_4species_distribution.pdf) (Amatulli)
	* Climate data ( https://www.worldclim.org/, https://chelsa-climate.org/)
	* Digital Elevation Model (http://hydro.iis.u-tokyo.ac.jp/~yamadai/MERIT_DEM/)
	* Satellite images (Modis, Landsat, Sentinel)
	* Population data - (https://www.worldpop.org/, https://ghsl.jrc.ec.europa.eu/)
* [Species distribution modelling (SDM), implementation and algorithms](http://spatial-ecology.net/docs/source/lectures/lect_20221123_SDM_Overview.pdf) (Stearns)
	* Regression vs classification
	* Supervised vs unsupervised
	* Classical statistical method vs machine learning
	* Example of machine learning (RF, NN)


#### Lecture 10: 24th of November, 2022

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/0aOd9wUSGHnNw6eMGhzJeRG1OF41qR3HMHgFLiKyO18wp6YAq9pdzToczWtv-JBW.VFJOzNaHw9SjVpj2). Please check your email for the pass-code (it will be the same pass-code for all recordings).

* [Assignment solutions](http://spatial-ecology.net/docs/build/html/ASSIGNMENTS/assignment_fall2022_solutions.html) (Giuseppe)
* [Introduction to R](http://spatial-ecology.net/docs/build/html/R/R_Intro.html) (Giuseppe)


#### Lecture 11: 29th of November, 2022.


Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/uJX2X6Lm43LfCIpNnuFCNSZw0VxNw2nvrIbLsJWMQzPtAuC9_kaVhQuNJ9pEdS8.simpfUjvieAUtt5_). Please check your email for the pass-code (it will be the same pass-code for all recordings).

* [Geographic data in R](https://geocompr.robinlovelace.net/spatial-class.html)(Stearns, based on [Geocomputation with R](https://geocompr.robinlovelace.net/index.html))
	* Raster and vector ingestion in R (R packages: raster, terra, stars, sp, sf) 
	* Attribute data operations
	* Coordinate reference systems
	* Plotting raster and vector data
	* Making maps
	* Spatial data operations on
	* Geometry operations
	* Raster-vector interactions

#### Lecture 12: 1st of December, 2022.

Recorded lecture can be found [here]( https://gatesfoundation.zoom.us/rec/share/kd--OFL35hw2STfSjFxIL8kRZxUUbgWC-2j1SwPLPjCqHknirKjDL_Q5cGE6QSg.qqiCDWI7HV4VuQwB). Please check your email for the pass-code (it will be the same pass-code for all recordings).


* [Spatial Operations](https://geocompr.robinlovelace.net/spatial-operations.html)(Stearns, based on [Geocomputation with R](https://geocompr.robinlovelace.net/index.html))  
* [Geometry Operations](https://geocompr.robinlovelace.net/geometry-operations.html)(Stearns, based on [Geocomputation with R](https://geocompr.robinlovelace.net/index.html))  
* [Raster Vector](https://geocompr.robinlovelace.net/raster-vector.html)(Stearns, based on [Geocomputation with R](https://geocompr.robinlovelace.net/index.html))  


#### Lecture 13: 6th of December, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/c-xmM8XBWZZsyDKy5z8yKAEgefRCs3jWRTIEvyBfPUk0bXzXnspNE5X92705_oKl.2VNk3S_c_IwQePWW). Please check your email for the pass-code (it will be the same pass-code for all recordings).

* [Species Distribution Modeling](http://spatial-ecology.net/docs/build/html/CASESTUDY/SDM2_Vath_Rmodel.html) (Stearns)
    * Spatial data visualization 
	* Data normalization 
	* Pseudo absence
	* Logistic regression
	* GLM 

#### Lecture 14: 8th of December, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/0_cnl_cHMaR9I0iKLVibJPrOLmXaJiZ__Nf27p7H5Weig1lAAkB77V_jAm6qlu4.Tz4FqMYm6-lrP5Pj). Please check your email for the pass-code (it will be the same pass-code for all recordings).

[Spatio-temporal Design and Analysis](http://spatial-ecology.net/docs/source/lectures/lect_20221208_Spatio-temporal_Design_and_Analysis.pdf). (Peter J. Diggle)


* Spatial data-formats
* Statistics and scientific method
* Geospatial survey design
* Geospatial survey analysis
* From spatial to spatio-temporal
   * longitudinal designs
   * repeated cross-sectional designs
   * adaptive designs
* Reading list


#### Lecture 15: 13th of December, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/0_cnl_cHMaR9I0iKLVibJPrOLmXaJiZ__Nf27p7H5Weig1lAAkB77V_jAm6qlu4.Tz4FqMYm6-lrP5Pj). Please check your email for the pass-code (it will be the same pass-code for all recordings).


* [SDM1 : Montane woodcreper - Gecomputation](http://spatial-ecology.net/docs/build/html/CASESTUDY/SDM1_MWood_gecomp.html)
   * Crop enviromental layers
   * Download climate layers
   * Building geomorphometric layers
   * Masking

* [SDM1 : Montane woodcreper - Modeling](http://spatial-ecology.net/docs/build/html/CASESTUDY/SDM1_MWood_Rmodel.html)
   * Data Exploration
      * Load observation presence dataset
      * Load the environmental data layers
      * Load expert range map
   * Plot the environmental data layers
   * Correlation plots
   * Model fitting GLM
   * Model Prediction GLM
   * Model fitting Random Forest
   * Model prediction Random Forest      

* Accuracy assessment (Amatulli)
	* Training and testing dataset
	* Cross Validation

#### Lecture 16: 15th of December, 2022.

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/Nz1in6iYzF6nFYyhISdVuzvOD4YBf5lsNzXLMjQjhNsKo9-M9FjcxUZU7O1cMSL6.f6o5IHpVHUIqPTjU). Please check your email for the pass-code (it will be the same pass-code for all recordings).

* [SDM1 : Montane woodcreper - Gecomputation](http://spatial-ecology.net/docs/build/html/CASESTUDY/SDM1_MWood_gecomp.html)
   * Crop enviromental layers
   * Download climate layers
   * Building geomorphometric layers
   * Masking

* [SDM1 : Montane woodcreper - Modeling](http://spatial-ecology.net/docs/build/html/CASESTUDY/SDM1_MWood_Rmodel.html)
   * Data Exploration
      * Load observation presence dataset
      * Load the environmental data layers
      * Load expert range map
   * Plot the environmental data layers
   * Correlation plots
   * Model fitting GLM
   * Model Prediction GLM
   * Model fitting Random Forest
   * Model prediction Random Forest      

* Accuracy assessment (Amatulli)
	* Training and testing dataset
	* Cross Validation

### On-site workshop: January 30th 2023 - February 10th 2023

* Code-hackathon and student supervision (manly the first week)
* 	8 hours/day for 2 weeks (9am-5pm)
* Nigerian ONCHO program overview
	* WHO requirements
	* Stop-MDA
	* Why do flies matter?
	* Entomological surveillance
* ONCHO blackfly environmental modelling and implementation
	* Project overview
	* Database
		* ESPEN - Standard Co
	* App component
		* Dimagi & Standard Co
	* ONCHO App for field work
* Last two days: student presentations.
