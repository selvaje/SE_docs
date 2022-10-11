# GeoComp & Modelling 2022 course
## Geocomputation and Modelling for Vector-borne Disease
###


**Online teaching or QA session of an attended recorded lecture: October - December 2022, 8 weeks**

* Every Tuesday: starting from October 11th, at 4PM - 6:45PM - Abuja, Nigeria (8AM - 10:45AM  - Seattle, WA, USA; 5PM - 7:45PM Rome, Italy)
* Every Thursday: ending on December 1st, at 4PM - 6:45PM - Abuja, Nigeria (8AM - 10:45AM - Seattle, WA, USA; 5PM - 7:45PM Rome, Italy)

**On-site workshop: January 2022 - February 2023, 2 weeks in Abuja, Nigeria**

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

Recorded lecture can be found [here](https://gatesfoundation.zoom.us/rec/share/5ax4zixOMUCQQZSa5lSFHK2prK43WzTvkos6NuYJvdyrUNPBx_2X-5lN65oUab9h.yDpRgB_X0gOAliHH). Please check your email for the passcode (it will be the same passcode for all recordings).

This session introduces the overall course program and Linux operating system.

* [Course objectives and schedule](http://spatial-ecology.net/docs/source/lectures/lect_20221011_FMOHCourse_introduction.pdf). (Tushar - 10min Lecture)
* Get to know each other: trainers and participants (20min Round-table )
* Course policy, homework, final project, trainers/students interactions.) (Tushar Sethi - 10min Lecture)
* Linux environment, why and what to use to handling BigData. (Giuseppe Amatulli - 20min Lecture)
* [SSpecies distribution modelling](http://spatial-ecology.net/docs/source/lectures/lect_20221011_SDM_Overview.pdf) (Erin Stearns - 20min Lecture)
* Troubleshooting the OSGeoLive Linux Virtual Machine installation. Previous to the class, follow the instruction at [Setting OSGeoLive for Spatial Ecology course](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html) for installing the Linux Virtual Machine.

#### Lecture 2: 13th of October, 2022.

Jump start into LINUX Bash programming (Giuseppe Amatulli)



[View recorded lecture](https://youtu.be/IDfFa3ulC90) before the QA session at 4PM.

* [Installation and introduction](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html)  to the [OSGeoLIve Linux Virtual Machine](http://live.osgeo.org/en/index.html) (Hands-on tutorial)
* The www.spatial-ecology.net tutorial platform (Hands-on tutorial)

* [Unix/Linux command line](http://spatial-ecology.net/docs/build/html/BASH/bashintro_osgeo.html) (Hands-on tutorial)
	* Starting with Bash
	* Special characters and Quoting
	* The most important commands - Unix/Linux Command Reference
	* Meta-characters and regular expression, their use.
	* Concatenate process (pipe).
	* String manipulation
* [Manipulate text files in bash](http://spatial-ecology.net/docs/build/html/BASH/bashinter_osgeo.html) (Hands-on tutorial)
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


#### Lecture 3: 18th of October, 2022.
Discovering the power of AWK programming language (Giuseppe Amatulli).

[View recorded lecture](https://youtu.be/gCQ33jknzZY) before the QA session at 4PM.

This session is fundamental for data filtering and preparation, bulk data download, text files manipulation, descriptive statistics and basic mathematical operation on large files. Students will access, query, understand and clean up data, perform data filtering using bash command line. We use AWK which is an extremely versatile and powerful programming language for working on text files, performing data extraction and reporting or to squeeze data before importing them into R/python or other software types.

* [Welcome to AWK world](http://spatial-ecology.net/docs/build/html/AWK/awk.html). Why to use AWK command line (Lecture).
* The basic commands, command syntax  (Hands on tutorial).
	* Built in variables
	* Import variables
	* String functions
	* Numerical functions
	* Query functions
	* Manipulate large files before importing in R
	* A study case: Manipulate thousand of text file with BASH and AWK
	* This session summarizes the use of BASH and AWK with a practical example of text file manipulation.

* [Explain GSIM text files](http://spatial-ecology.net/docs/build/html/CASESTUDY/manipulate_GSIM.html) (Lecture).
	* Data exploration (Hands on tutorial).
	* Count number of observations
	* Count how many observations per date
	* Monthly MEAN distribution

#### Lecture 4: 20th of October, 2022.
Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

[View recorded lecture](https://youtu.be/kBRW2Z5jX8M) before the QA session at 4PM.

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/20220414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Suggested assignments:**

These assignments do not need to be delivered, nonetheless we suggest doing it in order to get familiar with gdal_calc.py and with the issues of selecting the correct datatype and gdal_calc formula.

* [Data type in GTiff](http://www.spatial-ecology.net/docs/build/html/CASESTUDY/Data_type_GTiff.html)

#### Lecture 5: 25th of October, 2022.

Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

[View recorded lecture](https://youtu.be/Yy5UaCOvuYo) before the QA session at 4PM.


This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/20220414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images
* [Multicore operation within gdal and pktools](http://spatial-ecology.net/docs/build/html/BASH/bashxargs_osgeo.html)
	* Transform a simple “for loop” in multicore “for loop”

#### Lecture 6: 27th of October, 2022..

Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

[View recorded lecture](https://youtu.be/atchsCMQf5A) before the QA session at 4PM.

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html).


* [for raster and vector analysis](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) .
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

#### Lecture 7: 1st of November, 2022.

Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli).

[View recorded lecture](https://youtu.be/GfmCRNMtFfs) before the QA session at 4PM.

This section introduces a real example of satellite data [GLAD ARD](https://glad.umd.edu/ard/home) processing using [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html) and [PKTOOLS](http://pktools.nongnu.org/html/index.html) in a Bash environment.


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


Preparation for the geocomputation assignment:

* QA
* scripting procedure,
* file organisation
* Compulsory assignment:

Participant deliverable: 10-15m Video presentation (live or recorded) + code for the geocomputation part.

### Modelling lectures session

#### Lecture 8: 3rd of November, 2022.


* Giuseppe Amatulli: GIS for species distribution (Amatulli)
	* Climate data ( https://www.worldclim.org/, https://chelsa-climate.org/)
	* Digital Elevation Model (http://hydro.iis.u-tokyo.ac.jp/~yamadai/MERIT_DEM/)
	* Satellite images (Modis, Landsat, Sentinel)
	* Population data - (https://www.worldpop.org/, https://ghsl.jrc.ec.europa.eu/)
* Species distribution modelling (SDM), implementation and algorithms  (Stearns, Amatulli)
	* Regression vs classification
	* Supervised vs unsupervised
	* Classical statistical method vs machine learning
	* Example of machine learning (RF, NN)
	*
#### Lecture 9: 8th of November, 2022.

* Sampling design for collecting presence and absence (Peter Diggle)
	* Spatial/temporal sampling design   

#### Lecture 10: 10th of November, 2022.

* Introduction to R (video recording or already existing video)
* Working with spatial data in R (Stearns)
	* Raster and vector ingestion in R (R packages: raster, terra, stars, sp, sf)
	* Attribute data operations
	* Coordinate reference systems
	* Plotting raster and vector data
	* Making maps
	* Spatial data operations on
	* Geometry operations
	* Raster-vector interactions

#### Lecture 11: 15th of November, 2022.

* Species Distribution Modelling (Stearns)
	* Reducing dimensionality
		* Principal components analysis (PCA)
		* Non-metric multidimensional scaling (NMDS)
	* Normalisation
	* Pseudo absence
	* Logistic regression
	* GAM - GLM

#### Lecture 12: 17th of November, 2022.

* SDM - Random forest model (E. Stearns)
	* Defining model building blocks
	* Tuning hyperparameters
	* Predictive mapping


#### Lecture 13: 22nd of November, 2022.

* Accuracy assessment (Amatulli)
	* Training and testing dataset
	* Cross Validation

#### Lecture 14: 24th of November, 2022.

* Model results for informing decision-making (E. Stearns)
	* Communicating model results
	* Translating continuous surface output to set of points
	* Visualisation
	* Clearly communicating confidence/uncertainty

#### Lecture 15: 29th of November, 2022.

* Connecting SDM for vector-borne disease modelling to overall disease epidemiology (Erin, maybe Jorge Cano)
	* Vector-borne disease transmission dynamics
	* What do non-human vector models reveal about disease prevalence that human prevalence does not?
	* Connecting non-human vector model to human prevalence data

#### Lecture 16: 1st of December, 2022.

* Landscape connectivity base on population genetics pattern.  (base on https://www.pnas.org/doi/abs/10.1073/pnas.2003201118) (Amatulli)
* Dr. Louise Kelly-Hope


### On-site workshop: January 30th 2022 - February 10th 2023

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
