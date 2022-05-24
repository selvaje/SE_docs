# GeoComp & ML 2022 course
## Geocomputation and Machine Learning for environmental applications
### 


**Online teaching: April and May 2022, 8 weeks**

* Every Tuesday: starting from April 5th, at 3PM - 5:45 PM UTC+0 time
* Every Thursday: ending on   May 26th, at 3PM - 5:45 PM UTC+0 time

**In presence: June, 1 week in Matera, Italy** 

* June 13th - 17th.

In this course, students will be introduced to an array of powerful open-source geocomputation tools and machine learning methodologies under Linux environment. Students who have never been exposed to programming under Linux are expected to reach the stage where they feel confident in using very advanced open source data processing routines. Students with a precedent programming background will find the course beneficial in enhancing their programming skills for better modelling and coding proficiency. Our dual teaching aim is to equip attendees with powerful tools as well as rendering their abilities of continuing independent development afterwards. The acquired skills will be beneficial, not only for GIS related application, but also for general data processing and applied statistical computing in a number of fields. These essentially lay the foundation for career development as a data scientist in the geographic domain.

### Class roster  ###

  - [Class roster with the student names and their geographic location](http://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2022_foto/course_geocomp_ml_04-05_2022.html)

### Prelimanary Syllabus ###

Some lectures and study cases can slightly change in accordance to the student level/needs. 

  - [Preliminary Syllabus](https://docs.google.com/document/d/e/2PACX-1vTPgiWLwLs5c6V8gF2Qm36wdwtScbuw1eHa8S8Pn6i6MlJNiCH6kIum8BN_PsWLSm-zocpKPXSlUeug/pub)

### Final Syllabus ###

Below we are going to list day by day the final syllabus with the relatives links to the materials and recorded video.


## Lecture 1: 5th of April, 2022.
### Getting started: knowing each other and course introduction (Amatulli, Shen, Fonseca)

[Video Recording](https://yale.zoom.us/rec/share/UNKZhoVPFrx6DZUfke_n3uYwGTI19lLLSV4QlUrSCdSdPh_B1NHOs63263TbV_6e.c_B9EuFw_fFM3L3J)

This session introduces the overall course program and Linux operating system. 

* Get to know each other: trainers and participants (30-40min Round-table )
* [Course objectives and schedule.](http://spatial-ecology.net/docs/source/lectures/lect_20220404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 10min Lecture)
* [Course policy, homeworks, final project, trainers/students interactions.)](http://spatial-ecology.net/docs/source/lectures/lect_20220405_policy.pdf) (Longzhu Shen - 10min Lecture)
* [Linux environment, why and what to use to handling BigData.](http://spatial-ecology.net/docs/source/lectures/lect_20220404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 20min Lecture)
* [Spatial Statistics: fundamentals and philosophical aspects.](http://spatial-ecology.net/docs/source/lectures/lect_20220405_SpatStat.pdf) (Longzhu Shen - 20min Lecture)
* [Machine learning introduction.](http://spatial-ecology.net/docs/source/lectures/lect_20220405_IntroML.pdf) (Antonio Fonseca - 20min Lecture)


## Lecture 2: 7th of April, 2022. 
### Jump start into LINUX Bash programming (Giuseppe Amatulli)

[Video Recording](https://yale.zoom.us/rec/play/XKCXZCSnMgH-LACmPOts99E8BLuJbvLD3Tx71zFIMlwXBtBUo6zqCXeaU2121YOzT73PJidh4gw4F9Jv.gXBFvYHnesawIBRH)

During this session we explore and practice the basics of BASH terminal command line. The acquired skills will be used in all following sections.

* [Installation and introduction](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_for_Spatial_Ecology_course.html)  to the [OSGeoLIve Linux Virtual Machine](http://live.osgeo.org/en/index.html) (Hands-on tutorial)
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

These assignments do not need to be delivered nonetheless we suggest doing it in order to get familiar with the bash command line topics.  Below, some suggestions of possible operations:

* Get fast in navigating up and down in the directory using only the command line.
* Copy/move files from a directory to another directory.
* Search and use a command for copy file from you pc to a Linux remote server.
* Get fast on using keyboard shortcuts.
* Perform a data download operation using wget or curl.
* Unzip/untar files.
* Get familiar with apt update && apt upgrade && apt install to maintain your OSGeoLIve Linux Virtual Machine and install new  software.


## Lecture 3: 12th of April, 2022.
### Discovering the power of AWK programming language (Giuseppe Amatulli).

[Video Recording](https://yale.zoom.us/rec/share/YquhUQpemJ-_GFO-sASbbfiHanHnxSwr0uhE4rLReEv4vm1SzjNw9kecPV6Xi_Yi.pJndoRaJZtsRQlUL)


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
	

**Compulsory assignments:**

These assignment is compulsory and need to be delivered before 18th of April, 2022 12pm, UTC time. Please send the jupyter file or sh file (name as name\_surname.ipynb or name\_surname.sh ) as e-mail attachment  to g.amatulli@spatial-ecology.net.

Using the bash (and/or awk) language manipulate the GSIM/US*.mon files in order to create txt files, one for each month-year, that includes the station ID, latitude, longitude and the MEAN value.
 
The final output will be n text file (form *FirstDateOfTheSeries* to LastDateOfTheSeries) with the following structure: 


    cat 2002-01.txt 

| Gsim.no    | latitude | longitude | MEAN |   

| US_0001971 | 33.79427255 | -84.4743747 | 0.916785714285714 |  
| US_0001977 | 33.65666667 | -84.6736111 | 74.5558064516129  |  


In case you wanna manipulate your own txt (or csv) files, fell free to do it by implementing everything in bash (and/or awk). 
You can perform:
- data summary 
- table re-organization    
- data filtering 

**Compulsory assignment solution**

*Solution 1*

	# create output dir 
	mkdir -p output1
	rm -f output1/*.txt
	
	# Creates a txt file with the list of all uniq dates
	
	awk -F , '{ if(NF>5) { if ($1 > 0) { print $1 }}}' ./US_*.mon | sort | uniq > output1/dates.txt
	
	# Creates a txt file with the list of all uniq station ID, longitude, latitude. 
	
	paste -d " " <(grep gsim.no US*.mon   | awk '{print $4}') \
	             <(grep longitude US*.mon | awk '{print $4}') 
	             <(grep latitude US*.mon  | awk '{print $4}') | sort -k 1,1 > output1/ID_x_y.txt
	
	## loop trought the dates.txt 
	
	for DATE in $(cat output1/dates.txt ) ; do 
	echo processing $DATE
	
	grep ^$DATE US*.mon | awk '{ gsub(":"," "); gsub(","," ");if($3!="NA"){print substr($1,1,10),$3}}' \
	| sort -k 1,1 > output1/${DATE}_ID_mean.txt 
	
	join -1 1 -2 1 output1/ID_x_y.txt output1/${DATE}_ID_mean.txt  > output1/${DATE}_ID_x_y_mean.txt
	rm output1/${DATE}_ID_mean.txt 
	
	done 

*Solution 2*

	# create output dir 
	mkdir -p output2/
	rm -f output2/*.txt 
	#loop over all US files
	n=0
	for i in US_*.mon ; do
	#pull out information of interest
	gsim=$(awk 'NR==11 {print $4}' $i)
	lat=$(awk 'NR==15 {print $4}' $i)
	long=$(awk 'NR==16 {print $4}' $i)
	#make new directory with name of gsim ID to store txt files in
	mkdir $output$gsim
	
	#awk uses these and spits out txt files named by the date
	n=$(expr $n + 1)
	echo $gsim $n
	
	awk -v gsim=$gsim -v lat=$lat -v long=$long -v output=$output \
	' NR>22 {gsub(","," "); if($2!="NA"){print gsim,long,lat,$2 >> "output2/"$1"_ID_x_y_mean.txt"}}' $i
	
	rm -r $gsim
	done

*Results*

    head output1/1880-02-29_ID_x_y_mean.txt

> US_0002566 -81.2142745 38.1381632 519.584137931034  
> US_0003205 -85.2784299 35.08677555 1607.71448275862  
> US_0003994 -90.252073 41.78058635 957.402068965517  
> US_0004107 -91.374318 40.39365535 1340.26551724138  
> US_0005298 -90.1797778 38.629 3158.30551724138  
> US_0008856 -121.1899167 45.60827778 2184.69310344828 

	head output2/1880-02-29_ID_x_y_mean.txt

> US_0002566 -81.2142745 38.1381632 519.584137931034  
> US_0003205 -85.2784299 35.08677555 1607.71448275862  
> US_0003994 -90.252073 41.78058635 957.402068965517  
> US_0004107 -91.374318 40.39365535 1340.26551724138  
> US_0005298 -90.1797778 38.629 3158.30551724138  
> US_0008856 -121.1899167 45.60827778 2184.69310344828	  


	ls   output1/*_ID_x_y_mean.txt | wc -l ## 1644
	ls   output2/*_ID_x_y_mean.txt | wc -l ## 1642

## Lecture 4: 14th of April, 2022.
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli & Longzhu Shen).

[Video Recording](https://yale.zoom.us/rec/share/X6WdH8TiCujdF1MA99VSrGO8q5UK-IvLb7_m-YUasPz4kG80ommTsEYIU_mkzdlt.oBLfAcXXY0_UeLWh)

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/20220414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Compulsory assignments:**

These assignments do not need to be delivered now, nonetheless do it in order to get familiar with the gdal/ogr command line topics. In two weeks, when all the geographic tools will be covered, you will need to handling a scripting procedure that prepare the geographic dataset for your final project, so better to start now :-).  

Below, some suggestions of possible operations:

* Start to prepare the geographic dataset for your final project.
	* Using wget and/or curl download geographic dataset from an official repository
	* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
	* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.

**Suggested assignments:**

These assignments do not need to be delivered, nonetheless we suggest doing it in order to get familiar with gdal_calc.py and with the issues of selecting the correct datatype and gdal_calc formula.

* [Data type in GTiff](http://www.spatial-ecology.net/docs/build/html/CASESTUDY/Data_type_GTiff.html)


## Lecture 5: 19th of April, 2022.  
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli & Longzhu Shen).

[Video Recording](https://yale.zoom.us/rec/share/fkEa6e1GGvnrVLvNsxWk3XgscbJbSM5Xfk58o-mYjMjNEm5obfwAL7_M4iQl5mSS.HY-TDFZqwGKnU3T9)

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

**Compulsory assignments:**

* If you decide to come to Matera (Italy), pay a 100 EURO deposit following the same procedure of the course [registration](http://spatial-ecology.net/geocomp_ml_2022-registration/) before 21st of April, 2022 lecture. The deposit will be refunded to you if come to Matera.


* These assignments do not need to be delivered now, nonetheless do it in order to get familiar with the gdal/ogr command line topics. In two weeks, when all the geographic tools will be covered, you will need to handling a scripting procedure that prepare the geographic dataset for your final project, so better to start now :-).  

Below, some suggestions of possible operations:

* Start to prepare the geographic dataset for your final project.  
	* Using wget and/or curl download geographic dataset from an official repository
	* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
	* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.
	* Using pktools command performs: masking, filtering, histogram, re-classification, zonal statistic. 

## Lecture 6: 21st of April, 2022.  
### Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

[Video Recording](https://yale.zoom.us/rec/share/ON671x4l_zb8lxXvUb4DtH5x4hjjwA6kB4vozg2HXMExapznq0tQPuLjuutpYnXR.fQPpgT2eZYrobTtB)

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html).


* [for raster and vector analysis](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) .
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

## Lecture 7: 26th of April, 2022.
### Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli & Longzhu Shen).

[Video Recording](https://yale.zoom.us/rec/share/nN4qF1ZUObGL7MX-WEl2DRme0POKYYhDdYDtIbZ0ERYaxQzxVitoSoGmhwv-8HY8.cWSYSNYEaT1IsLYk)

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
		


## Lecture 8: 28th of April, 2022.
### Modeling introduction (Longzhu Shen)

[Video Recording](https://yale.zoom.us/rec/share/yoWuizgenTI_lY5-Ia8RFZZmn2V5hivUbZb35LxbHg45Zt1OeYam6JOCetwkYVfV.eQoeUTwFs2g7Cyhh)

* [Conditioning](http://spatial-ecology.net/docs/source/lectures/lect_20220428_Conditioning.pdf)
	* Modelling theory
	* Computing
		* Arithmetic
		* Algorithms
		* Analytics
	* Machine precision
	* Conditioning
	
**Compulsory assignments:**

Reading materials:

* [What Role Does Hydrological Science Play in the Ageof Machine Learning?](https://agupubs.onlinelibrary.wiley.com/doi/epdf/10.1029/2020WR028091)

## Lecture 9: 3rd of May, 2022.
### Probability theory & Tree height estimation (Longzhu Shen, Giuseppe Amatulli)

[Video Recording](https://yale.zoom.us/rec/share/JTRk3aI9qgnnuLrkXPvN9Itsik6_iJ49AZ9pDofdqbzKrre-rAeKNX75ZwUGW6ST.uKlhCayMj4SsNlKe)


* Recap of previous lecture 
* Guided reading of HW
* [Probability Theory](http://spatial-ecology.net/docs/source/lectures/lect_20220503_Theo_Prob.pdf)
	* Basic definitions and properties
	* Conditional probability
	* Independence
	* Law of total probability 
	* Bayes theorem 
	* Expectation values 
	* Common probability distribution functions

* [Estimation of tree height using GEDI dataset](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html)

**Compulsory assignments:**

Reading materials for next Tuesday.

* [Predicting into unknown space? Estimating the area of applicability of spatial prediction models](https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.13650)
* [Spatial validation reveals poor predictive performance of large-scale ecological mapping models](https://www.nature.com/articles/s41467-020-18321-y)
* [Spatial cross-validation is not the right way to evaluate map accuracy](https://www.sciencedirect.com/science/article/pii/S0304380021002489)


## Lecture 10: 5th of May, 2022.
### Spatial statistic (Longzhu Shen)

[Video Recording](https://yale.zoom.us/rec/share/4hWbNMTZ0w1lUySGae4MtGGfpjBVc46O6j6LIM3mPZ8xFczvaH5nsXTdiXMb9OhL.ZdCWNvGt6xUzRNJ3)

* Recap: Probability Theory
* [Introduction to Spatial Statistic](http://spatial-ecology.net/docs/source/lectures/lect_20220505_SDM.pdf)
	* Spat Dependence 
	* Stationary
	* Process modeling 
	* Process decomposition
	* Causality
	* Smoothed data
* Species Distribution Model (SDM)
	* Theory of Ecology community 
	* Single SDM 
		* General linear model 
		* Linear mixed model 
		* Maxent
		* Pseduo absence data 
	* Joint SDM
	
Reading materials for next Tuesday.

* [Predicting into unknown space? Estimating the area of applicability of spatial prediction models](https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.13650)
* [Spatial validation reveals poor predictive performance of large-scale ecological mapping models](https://www.nature.com/articles/s41467-020-18321-y)
* [Spatial cross-validation is not the right way to evaluate map accuracy](https://www.sciencedirect.com/science/article/pii/S0304380021002489)


## Lecture 11: 10th of May, 2022.
### Machine Learning Introduction, Support Vector Machine & Random Forest (Antonio Fonseca & Giuseppe Amatulli)

In this class we will set the main fundamentals to implement machine learning in geo science. We will use the data-set and explanation described in [Estimation of tree height using GEDI dataset - Data explore](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html).

[Video Recording](https://yale.zoom.us/rec/share/2Dk5hM9X8F8PtMe3tIPU7Pn7zy87YKhL4M-Ap3V7pQc9pVn01eIr_Q3eKwHYsxxK.OqPxSu126mbmQ4BZ)

* [Intro to machine learning](http://spatial-ecology.net/docs/source/lectures/lect_20220510_GeoComp_IntroML_SVM.pdf) (F.)
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
		* Prediction of RF model on raster tif.
		
## Lecture 12: 12th of May, 2022.
### Machine Learning - Perceptron (Antonio Fonseca)

[Video Recording](https://yale.zoom.us/rec/share/s8m3sfWZNqpp5stVIYcTJ68fKXXmOFlUcf84KTdFPiEaDiWh8f8sxrkVlB8Ned2v.6QPOcY9gbIljEmr5)

* [The “less optimal” hyperplane methods](http://spatial-ecology.net/docs/source/lectures/lect_20220512_GeoComp_Perceptron.pdf)
	* Links between SVM and Logistic Regression 
	* Review on Linear Regression 
	* Minimizing loss functions
	* Regularization

* [Perceptron](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04Perceptron_pred.html)
	* The universal approximator
	* Intro to optimizers 
	* Hands-on tutorial
	

## Lecture 13: 17th of May, 2022.
### Machine Learning - (Antonio Fonseca)


[Video Recording](https://yale.zoom.us/rec/share/3JpsqAfL8MvWGnQsWJhkOSQhLXX-5fclIV1oxMccapWaIJmR0wKxHzalVKdJ6_x6.6msW3LDz7RauC3Fq)

* Perceptron 
	* Quick recap
	* [Hands-on tutorial](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04Perceptron_pred.html)
	* Intro to gradient descent and optimizers


## Lecture 14: 17th of May, 2022.
### Machine Learning - (Antonio Fonseca)

[Video Recording](https://yale.zoom.us/rec/share/7empkIlVU6kQ6w4RiVNKidz12WvopLXPSScQGZEAiG64XkhsZOgFAdb9UGAO0Y1-.pOAKNJ5p-0Hl5h5i)


* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20220517_GeoComp_NeuralNets.pdf)
	* The limitations of Perceptrons 
	* Multi-layer Perceptron
	* [Training: the forward and back-propagation](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_05NeuralNets_pred.html)
	

## Lecture 15: 24th of May, 2022.
### Machine Learning - (Antonio Fonseca)

[Video Recording]()

* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20220524_GeoComp_NeuralNets_3_CNNs.pdf)
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