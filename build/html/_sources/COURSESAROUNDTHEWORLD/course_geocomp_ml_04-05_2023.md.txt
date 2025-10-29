# GeoComp & ML 2023 course
## Geocomputation and Machine Learning for environmental applications

(Spatial Ecology is supporting the [RAM4Africa](https://spatial-ecology.net/ram4africa/) project)  

**Online teaching: April and May 2023, 8 weeks**


* Start lecturing: 28 March, every **Tuesday and Thursday** at 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* Catch-up session: Tuesday 25 April: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* Catch-up session: Thursday 27 April: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am) 
* Resume lecturing: 3 May, every **Wednesday and Friday** at 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* End lecturing 26: May, at 3pm – 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)

Classes youtube playlist [link](https://www.youtube.com/playlist?list=PL2h1_A_4X7LBAxSuVGUTYnTpKfI6fgRnk)


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

Recorded lecture can be found [here](https://youtu.be/4BaS-mmQhOQ?si=MIMhr-FcizX9GUG1).

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

Recorded lecture can be found [here](https://youtu.be/Bi6NgkbYZBg?si=0asCXLGz1BZRvv5J).

* [Installation and introduction](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html)  to the [OSGeoLIve Linux Virtual Machine](http://live.osgeo.org/en/index.html) (Hands-on tutorial)
*
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


## Lecture 3: 4th of April, 2023.
### Discovering the power of AWK programming language (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/z8uuvPdXVqA?si=5PxmhtrbSL50fIOa).

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

These assignment is compulsory and need to be delivered before 10th of April, 2023 12pm, UTC time. Please send the jupyter file or sh file (name as name\_surname.ipynb or name\_surname.sh ) as e-mail attachment  to g.amatulli@spatial-ecology.net.

Using the bash (and/or awk) language manipulate the GSIM/US*.mon files in order to create txt files, one for each month-year, that includes the station ID, latitude, longitude and the MEAN value.
 
The final output will be n text file (form *FirstDateOfTheSeries* to LastDateOfTheSeries) with the following structure: 


    cat 2002-01.txt 

 Gsim.no latitude longitude MEAN   
 US_0001971	33.79427255 -84.4743747 0.916785714285714  
 US_0001977	33.65666667 -84.6736111 74.5558064516129  

In case you wanna manipulate your own txt (or csv) files, fell free to do it by implementing everything in bash (and/or awk). 
You can perform:
- data summary 
- table re-organization    
- data filtering 

---
<!---
    cd /media/sf_LVM_shared/GSIM/zip/GSIM_indices/TIMESERIES/monthly
    cp /home/user/SE_data/exercise/manipulate_GSIM_assignment_solutions.sh /media/sf_LVM_shared/GSIM/zip/GSIM_indices/TIMESERIES/monthly

---

    ##### create output dir 
    mkdir -p output1   output2 output3 

--- 

#########Solution 1 #########*

    rm -f output1/*.txt

    # Creates a txt file with the list of all uniq dates

    awk -F , '{ if(NF>5) { if ($1 > 0) { print $1 }}}'  US_00090*.mon  | sort | uniq > output1/dates.txt

    # Creates a txt file with the list of all uniq station ID, longitude, latitude. 



    paste -d " " <(grep gsim.no   US_00090*.mon | awk '{print $4}') \
             <(grep longitude US_00090*.mon | awk '{print $4}') \
             <(grep latitude  US_00090*.mon | awk '{print $4}') | sort -k 1,1 > output1/ID_x_y.txt

    ## loop trought the dates.txt 

    for DATE in $(cat output1/dates.txt ) ; do 
    echo processing $DATE

    grep ^$DATE US_00090*.mon  | awk '{ gsub(":"," "); gsub(","," ");if($3!="NA"){print substr($1,1,10),$3}}' | sort -k 1,1 > output1/${DATE}_ID_mean.txt 

    join -1 1 -2 1 output1/ID_x_y.txt output1/${DATE}_ID_mean.txt  > output1/${DATE}_ID_x_y_mean.txt
rm output1/${DATE}_ID_mean.txt 

done 

--- 

#########Solution 2 #########

    rm -f output2/*.txt 
    #loop over all US files
    n=0
    for i in US_00090*.mon ; do
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

---
#########Solution 3 #########

    rm -f output3/*.txt

    awk '{gsub(",", "");
     gsub("\t", " ");
     if($2=="gsim.no")   {station=$4};
     if($2=="latitude")  {lat=$4};
     if($2=="longitude") {lon=$4};
     if($1 ~ /[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]/ && $2!="NA" )
     { print station, lat , lon , $2 > "output3/"substr($1,1,7)"_ID_x_y_mean.txt" }
     }' US_00090*.mon 

--->
---


## Lecture 4: 6th of April, 2023.
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/pBakH2DlBU0?si=xd_wAltX5U-aB4n2).

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.

* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20230414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Suggested assignments:**

Get familiar with *gdalinfo* & *gdal_edit.py* using your data or the tif file stored in the SE_data. 

---

Watch this lecture to get more insight on the different data type  

Numerical System Decimal vs Binary. [Recorded lecture: 1:28:45 - 1:48:00](https://youtu.be/kBRW2Z5jX8M?t=5328)

---

These assignments do not need to be delivered, nonetheless we suggest doing it in order to get familiar with gdal_calc.py and with the issues of selecting the correct datatype and gdal_calc formula.

* [Data type in GTiff](http://www.spatial-ecology.net/docs/build/html/CASESTUDY/Data_type_GTiff.html)

## Lecture 5: 11th of April, 2023.  
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/s-WLwHn1544?si=SXUh7SE_flR_0BiT).

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20230414_Floating_point.pdf) (Lecture)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Compulsory assignments:**

* This assignment focus in attending a video recording lecture aiming to push the precessing in the multi-core environment.  

* [Multicore operation within gdal and pktools](http://spatial-ecology.net/docs/build/html/BASH/bashxargs_osgeo.html)
	* Transform a simple “for loop” in multicore “for loop”

**Suggested assignments:**

* These assignments do not need to be delivered now, nonetheless do it in order to get familiar with the gdal/ogr command line topics. In two weeks, when all the geographic tools will be covered, you will need to handling a scripting procedure that prepare the geographic dataset for your final project, so better to start now :-).  

Below, some suggestions of possible operations:

* Start to prepare the geographic dataset for your final project.  
	* Using wget and/or curl download geographic dataset from an official repository
	* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
	* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.

## Lecture 6: 13st of April, 2023.  
### Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/ZSWsBENWtgc?si=a6fupvRyQLqGPrSs).

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html).

* [for raster and vector analysis](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) .
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

**Compulsory assignments:**

Before the 18th of April, 2023, watch the "Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example" lecture (all links in Lecture 7). On the 18th of April, 2023 we will do a QA and a review of gdal and pkstools commands. Feel free to present your scripting procedure for receiving feedback and suggestions.

**Suggested assignments:**

* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.
* Using pktools command performs: masking, filtering, histogram, re-classification, zonal statistic. 


## Lecture 7: 18th of April, 2023.
### Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli).


[Video Recording of the lecture](https://youtu.be/GfmCRNMtFfs)

Recorded of the QA can be found [here](https://youtu.be/BSgV05oPzNQ?si=h1-D-jpbQiBm-REk).

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

Recorded lecture can be found [here](https://youtu.be/kpoMaOAtGc4?si=0POujgKJnZ09_7Ij). 

* [Raseterio introduction](http://spatial-ecology.net/docs/build/html/PYTHON/RasterIO_Intro.html)
* [Estimation of tree height using GEDI dataset - Predictors extraction at point location](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_02Predictors_extraction.html)
	
## Catch-up session 1: 25th of April, 2023

Students will meet online with the teachers to review past material and solving additional doubts. 

Recorded of the QA can be found [here](https://yale.zoom.us/rec/share/Y56V6IB4Dg6wlUjBl2FVrAbnkIl6TAdjlDx5hS9HJxXY_vIM5i15NDF1uxxqht1N.mx4TbSDp382wA1Ff). Password has been sent by e-mail on March 28  (it will be the same pass-code for all recordings).

## Catch-up session 2: 27th of April, 2023.

Students will meet online with the teachers to review past material and solving additional doubts. 

Recorded of the QA can be found [here](https://yale.zoom.us/rec/share/nGPLFnJNJyEu1-W6FUZ5B1DPdh_Sr7d4nr13ap1SbWQfcyRz7SlQADHcaosRQY4r.J05o-Mne34IAS1gx). Password has been sent by e-mail on March 28  (it will be the same pass-code for all recordings).

## Lecture 9: 3nd of May, 2023.
### Geospatial python (Pieter Kempeneers)

Recorded lecture can be found [here](https://youtu.be/uTpUj0VhEJw?si=A7-VWS59kXvXlusZ). 

The first part of the video recording (00:00 - 49:45) has been dedicate to trouble shouting the installation of pyjeo (anyway with the new install_pyjeo.sh that you find in the git-repository it should be fine). 
Rather the second part (49:45 - until the end) is the real pyjeo lectures. 

* pyjeo
	* [Introduction to pyjeo - Lecture](http://spatial-ecology.net/docs/source/lectures/lect_20230503_pyjeo.pdf)
	* [Introduction to pyjeo - hands on](https://spatial-ecology.net/docs/build/html/PKTOOLS/pyjeo_introduction.html)

## Lecture 10: 5th of May, 2023.
### Geospatial python (Pieter Kempeneers)

Recorded lecture can be found [here](https://youtu.be/9oGk4Hp1v5k?si=Xf1qA8ylgdj7xx-L). 

Always do the git pull to get the new scripts.

* pyjeo
	* [Performing raster and vector operations in Python using pyjeo](https://spatial-ecology.net/docs/build/html/PKTOOLS/pyjeo_pktools.html)

## Lecture 11: 10th of May, 2023.
### Machine Learning Introduction, Support Vector Machine & Random Forest (Antonio Fonseca & Giuseppe Amatulli)

In this class we will set the main fundamentals to implement machine learning in geo science. We will use the data-set and explanation described in [Estimation of tree height using GEDI dataset - Data explore](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html).

Recorded lecture can be found [here](https://youtu.be/x_5QpmQtWIQ?si=RcVAp-z3O0BLf2Zm). 

* [Estimation of tree height using GEDI dataset](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html) - [Video recording from last year](https://youtu.be/x1AEagMyIe0?t=5220)

* [Intro to machine learning](http://spatial-ecology.net/docs/source/lectures/lect_20230510_GeoComp_IntroML_SVM.pdf) (F.)
	* Defining learning 
	* Supervised vs Unsupervised learning
	* The framework of learning algorithms
	
* Example of Supervised learning using scikit-learn in python.
	* [Support Vector Machine](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04SVM_pred_2023.html) (SVM)(F.)
		* Optimization of SVM
		* Extension of SVM to regression (SVR)
	* [Random Forest](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_03RF_pred.html) (RF) (A.) - [Video recording from last year](https://youtu.be/DlxlqCXhY7I?t=4780)
		* Random Forest basic concept
		* Avoid random forest over-fitting
		* Optimization of RF
		* Prediction of RF model on raster tif
		
## Lecture 12: 12th of May, 2023.
### Machine Learning - Perceptron (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/923iugllDF0?si=7BueM2JAPbYBJg0k).

* Example of Supervised learning using scikit-learn in python.
	* [Support Vector Machine](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04SVM_pred_2023.html) (SVM)(F.)
		* Optimization of SVM
		* Extension of SVM to regression (SVR)

* [The “less optimal” hyperplane methods](http://spatial-ecology.net/docs/source/lectures/lect_20230512_GeoComp_Perceptron.pdf)
	* Links between SVM and Logistic Regression 
	* Review on Linear Regression 
	* Minimizing loss functions
	* Regularization

## Lecture 13: 17th of May, 2023.
### Machine Learning -  Perceptron (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/-QlMybUCl1U?si=JpeXkFQHKGqmIeYW).

* [Perceptron and neural network](http://spatial-ecology.net/docs/source/lectures/lect_20230517_GeoComp_NeuralNets.pdf)

	* The universal approximator
	* Intro to optimizers 
	* Intro to gradient descent and optimizers

* [Perceptron introduction](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_05Perceptron_intro_2023.html)

* [Perceptron Tree Height prediction](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_06Perceptron_pred_2023.html)

## Lecture 14: 19th of May, 2023.
### Machine Learning - Architecture of Neural Networks  (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/l1a5d90jOWs?si=oNQ8kiuWUDwYZk9l).

* [Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20230517_GeoComp_NeuralNets.pdf)
  * Forward Propagation
  * Back Propagation
* [Estimation of tree height using GEDI dataset - Neural Network Feed Forward - 2023](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_07FeedForward_Networks_2023.html)

## Lecture 15: 24th of May, 2023.
### Machine Learning - Capacity, Overfitting, Underfitting - Convolutional Neural Networks (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/28QnxspZwFg?si=8G1clFPt6gmDYleD).

* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20230524_GeoComp_NeuralNets_CNNs.pdf)
	* Quick recap
	* Extra regularization techniques
	* Capacity, Overfitting and Underfitting
	* Debugging tips
	* Family of optimizers
	* Tutorial: more features and different optimizers

* [Convolutional Neural Networks](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite_2023.html)
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images

## Lecture 16: 26th of May, 2023.
### Machine Learning - Papers discussion (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/4Vq_PINaTE8?si=XDqUhCDQS8KUBjqc).

## Lecture 17: 6th of June, 2023.
In presence week in Matera, Italy

### Using GPT (Antonio Fonseca)

Recorded lecture can be found [here](https://youtu.be/nffKt6GdLXw).

* [Using GPT as your coding partner](http://spatial-ecology.net/docs/source/lectures/lect_20230606_GPT_for_coding.pdf)
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite_with_GPT_code_2023.html)

## Lecture 18: 6th of June, 2023.
In presence week in Matera, Italy

### Pyjeo in combination with sklearn (Pieter Kempeneers)

Recorded lecture can be found [here](https://youtu.be/udQAO2JimTc).

* Classification in python using pyjeo and sklearn
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/Classification_pyjeo_sklearn_2023.html)


## Lecture 19: 6th of June, 2023.
In presence week in Matera, Italy

### Google Earth Engine (GEE) (Francesco Lovergine)

Recorded lecture can be found [here](https://youtu.be/n4zgNY41LgM).

* Use of GEE with Javascripts and python buinding.
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/GEEviaPython_2023.html)

