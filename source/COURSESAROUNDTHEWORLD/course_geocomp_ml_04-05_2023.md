# GeoComp & ML 2023 course
## Geocomputation and Machine Learning for environmental applications

(Spatial Ecology is supporting the [RAM4Africa](https://spatial-ecology.net/ram4africa/) project)  

**Online teaching: April and May 2023, 8 weeks**


* Start lecturing: 28 March, every **Tuesday and Thursday** at 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* Catch-up session: Tuesday 25 April: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* Catch-up session: Thursday 27 April: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am) 
* Resume lecturing: 3 May, every **Wednesday and Friday** at 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* End lecturing 26: May, at 3pm – 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)

Classes zoom link:  
[https://yale.zoom.us/j/91607041228?pwd=eUJuaWozcnFRRXFIQzVwV2lhKzNLdz09](https://yale.zoom.us/j/91607041228?pwd=eUJuaWozcnFRRXFIQzVwV2lhKzNLdz09)

Password has been sent by e-mail on March 27.  

**In presence: June, one week in Matera, Italy** 

The in-person Matera session can be considered a sort of hackathon where participants will work on their code from 9am to 5pm and on the last days will present their final project and code. This week aims to achieve group collaboration and troubleshooting under the direct supervision of the trainers. During this session, there will also be brief talks from the trainers and from invited speakers.

We proposed one week of hackathon. 

* June 5th - 9th.

**Course objectives**

In this course, students will be introduced to an array of powerful open-source geocomputation tools and machine learning methodologies under Linux environment. Students who have never been exposed to programming under Linux are expected to reach the stage where they feel confident in using very advanced open source data processing routines. Students with a precedent programming background will find the course beneficial in enhancing their programming skills for better modelling and coding proficiency. Our dual teaching aim is to equip attendees with powerful tools as well as rendering their abilities of continuing independent development afterwards. The acquired skills will be beneficial, not only for GIS related application, but also for general data processing and applied statistical computing in a number of fields. These essentially lay the foundation for career development as a data scientist in the geographic domain.

**All the class will be recorded. The video link will be posted in the syllabus below**  

### Class roster  ###

  - [Class roster with the student names and their geographic location](http://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023_foto/course_geocomp_ml_04-05_2023_roster.html)

### Syllabus ###

Below we are going to list day by day the final syllabus with the relatives links to the materials and recorded video.

## Lecture 1: 28th of March, 2023.
### Getting started: knowing each other and course introduction.

This session introduces the objective of the course and a round table among the students and the teachers.  

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/u3u_VHXjvGLktYsfxDsflrEYP3UzqGPrAvTcbul5lMX_AOir1lWl7az7wUok2Q1K.hPy7MRIuHwySA5pA).
Password has been sent by e-mail on March 28  (it will be the same pass-code for all recordings).

Time below in CEST

* 17:00 - 17:10  Tushar Sethi: background/interest & course objective - communication/administration role.
* 17:10 - 17:25  Antonio Fonseca: background/interest & machine learning introduction - teaching role.
* 17:25 - 17:40  Pieter Kempeneers: background/interest & pyjeo introduction - teaching role.
* 17:40 - 17:55  Giuseppe Amatulli: background/interest & bash/gdal/pktools introduction - teaching role.
* 18:55 - 18:10  Francesco Lovergine: background/interest & geo-python introduction - teaching role.
* 18:10 - 18:25  Longzhu Shen: background/interest & stat/math subjects - supervision role.
* 18:25 - 18:45  Break 
* 18:40 - 19:20  Students round table + QA of the course. 
* 19:20 - 19:45  Virtual machine installation review, QA & troubleshooting.

<!---

* Get to know each other: trainers and participants (30-40min Round-table )
* [Course objectives and schedule.](http://spatial-ecology.net/docs/source/lectures/lect_20230404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 10min Lecture)
* [Course policy, homeworks, final project, trainers/students interactions.)](http://spatial-ecology.net/docs/source/lectures/lect_20230405_policy.pdf) (Giuseppe Amatulli - 10min Lecture)
* [Linux environment, why and what to use to handling BigData.](http://spatial-ecology.net/docs/source/lectures/lect_20230404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 20min Lecture)
* [Spatial Statistics: fundamentals and philosophical aspects.](http://spatial-ecology.net/docs/source/lectures/lect_20230405_SpatStat.pdf) (Giuseppe Amatulli - 20min Lecture)
* [Machine learning introduction.](http://spatial-ecology.net/docs/source/lectures/lect_20230405_IntroML.pdf) (Antonio Fonseca - 20min Lecture)

--->

## Lecture 2: 30th of March, 2023. 
### Jump start into LINUX Bash programming (Giuseppe Amatulli)

During this session we explore and practice the basics of BASH terminal command line. The acquired skills will be used in all following sections.

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


## Lecture 3: 4th of April, 2023.
### Discovering the power of AWK programming language (Giuseppe Amatulli).

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
	

## Lecture 4: 6th of April, 2023.
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).


This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20230414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Suggested assignments:**

These assignments do not need to be delivered, nonetheless we suggest doing it in order to get familiar with gdal_calc.py and with the issues of selecting the correct datatype and gdal_calc formula.

* [Data type in GTiff](http://www.spatial-ecology.net/docs/build/html/CASESTUDY/Data_type_GTiff.html)


## Lecture 5: 11th of April, 2023.  
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20230414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images
* [Multicore operation within gdal and pktools](http://spatial-ecology.net/docs/build/html/BASH/bashxargs_osgeo.html)
	* Transform a simple “for loop” in multicore “for loop”

**Suggested assignments:**

* These assignments do not need to be delivered now, nonetheless do it in order to get familiar with the gdal/ogr command line topics. In two weeks, when all the geographic tools will be covered, you will need to handling a scripting procedure that prepare the geographic dataset for your final project, so better to start now :-).  

Below, some suggestions of possible operations:

* Start to prepare the geographic dataset for your final project.  
	* Using wget and/or curl download geographic dataset from an official repository
	* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
	* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.
	* Using pktools command performs: masking, filtering, histogram, re-classification, zonal statistic. 

## Lecture 6: 13st of April, 2023.  
### Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html).


* [for raster and vector analysis](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) .
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

## Lecture 7: 18th of April, 2023.
### Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli).

This section introduces a real example of satellite data [GLAD ARD](https://glad.umd.edu/ard/home) processing using [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html) and [PKTOOLS](http://pktools.nongnu.org/html/index.html) in a Bash environment.


* [Temporal interpolation of landsat images](http://spatial-ecology.net/docs/build/html/CASESTUDY/temporal_interpolation.html) (A.)
	* Data download & cropping
	* Image characteristics
	* Temporal composite
	* Temporal interpolation
	* Plotting the temporal interpolation for band 1
	* Assessing the temporal interpolation
* [Temporal analysis: Approximation](http://spatial-ecology.net/docs/source/lectures/lect_20230426_Approximation.pdf)  (S.)
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

## Lecture 8: 20th of April, 2023.
### Geospatial python (Francesco Lovergine)

* rasterio

	
## Catch-up session 1: 25th of November, 2023

Students will meet online with the teachers to review past material and solving additional doubts. 

## Catch-up session 2: 27th of November, 2023.

Students will meet online with the teachers to review past material and solving additional doubts. 

## Lecture 9: 3nd of May, 2023.
### Geospatial python (Pieter Kempeneers)

* pyjeo 

## Lecture 10: 5th of May, 2023.
### Geospatial python (Pieter Kempeneers)


* pyjeo


## Lecture 11: 10th of May, 2023.
### Machine Learning Introduction, Support Vector Machine & Random Forest (Antonio Fonseca & Giuseppe Amatulli)

In this class we will set the main fundamentals to implement machine learning in geo science. We will use the data-set and explanation described in [Estimation of tree height using GEDI dataset - Data explore](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html).

	* [Estimation of tree height using GEDI dataset](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html)

* [Intro to machine learning](http://spatial-ecology.net/docs/source/lectures/lect_20230510_GeoComp_IntroML_SVM.pdf) (F.)
	* Defining learning 
	* Supervised vs Unsupervised learning
	* The framework of learning algorithms
	
* Example of Supervised learning using scikit-learn in python.
	* [Support Vector Machine](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_02SVM_pred.html) (SVM)(F.)
		* Optimization of SVM
		* Extension of SVM to regression (SVR)
	* [Random Forest](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_03RF_pred.html) (RF) (A.)
		* Random Forest basic concept
		* Avoid random forest over-fitting
		* Optimization of RF
		* Prediction of RF model on raster tif
		
## Lecture 12: 12th of May, 2023.
### Machine Learning - Perceptron (Antonio Fonseca)


* [The “less optimal” hyperplane methods](http://spatial-ecology.net/docs/source/lectures/lect_20230512_GeoComp_Perceptron.pdf)
	* Links between SVM and Logistic Regression 
	* Review on Linear Regression 
	* Minimizing loss functions
	* Regularization

* [Perceptron](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04Perceptron_pred.html)
	* The universal approximator
	* Intro to optimizers 
	* Hands-on tutorial
	

## Lecture 13: 17th of May, 2023.
### Machine Learning -  Perceptron (Antonio Fonseca)


* Perceptron 
	* Quick recap
	* [Hands-on tutorial](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04Perceptron_pred.html)
	* Intro to gradient descent and optimizers

## Lecture 14: 19th of May, 2023.
### Machine Learning - Multi-layer Perceptron (Antonio Fonseca)


* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20230517_GeoComp_NeuralNets.pdf)
	* The limitations of Perceptrons 
	* Multi-layer Perceptron
	* [Training: the forward and back-propagation](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_05NeuralNets_pred.html)
	

## Lecture 15: 24th of May, 2023.
### Machine Learning - Capacity, Overfitting and Underfitting (Antonio Fonseca)


* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20230524_GeoComp_NeuralNets_3_CNNs.pdf)
	* Quick recap
	* Extra regularization techniques
	* Capacity, Overfitting and Underfitting
	* Debugging tips
	* Family of optimizers
	* Tutorial: more features and different optimizers

* [Interpretability in Neural Nets](http://spatial-ecology.net/docs/build/html/CASESTUDY/NNs_pt3_SHAP.html)
	* SHAP and saliency maps
	* Tutorial: inspect the importance of features in the tree height dataset.

* [Convolutional Neural Networks](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite.html)
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images

## Lecture 16: 26th of May, 2023.
### Machine Learning - Convolutional Neural Networks (Antonio Fonseca)


* [Convolutional Neural Networks](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite.html)
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images

