# GeoComp & ML 2024 course
## Geocomputation and Machine Learning for environmental applications

(Spatial Ecology is supporting the [RAM4Africa](https://spatial-ecology.net/ram4africa/) project)  

**Online teaching: April and June 2024, 10 weeks**


* **Start lecturing**: 2 April, every **Tuesday, Thursday** at 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* **Catch-up session**: Tuesday 30 April: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am)
* **Catch-up session**: Thursday 2 May: 3 pm - 5:45 pm UTC (CEST 5 pm, EDT 11 am, PDT 8 am) 
* **Resume lecturing**: 7 May, every **Tuesday, Thursday** at 11 am - 1:45 pm UTC (CEST 1 pm, EDT 7 am, PDT 4 am)
* **GRASS week**: 21-22-23 May, **Tuesday, Wednesday, Thursday** at 11 am - 1:45 pm UTC (CEST 1 pm, EDT 7 am, PDT 4 am)
* **End lecturing**: 6 June, at 11 am – 1:45 pm UTC (CEST 1 pm, EDT 7 am, PDT 4 am)


**In-person week: June 10-14, coding hackathon in Matera, Italy**

**In-person week: June 17-21, extended study group in Matera, Italy**


The in-person Matera session can be considered a sort of hackathon where participants will work on their code from 9am to 5pm and on the last days will present their final project and code. This week aims to achieve group collaboration and troubleshooting under the direct supervision of the trainers. During this session, there will also be brief talks from the trainers and from invited speakers.


**Course objectives**

In this course, students will be introduced to an array of powerful open-source geocomputation tools and machine learning methodologies under Linux environment. Students who have never been exposed to programming under Linux are expected to reach the stage where they feel confident in using very advanced open source data processing routines. Students with a precedent programming background will find the course beneficial in enhancing their programming skills for better modelling and coding proficiency. Our dual teaching aim is to equip attendees with powerful tools as well as rendering their abilities of continuing independent development afterwards. The acquired skills will be beneficial, not only for GIS related application, but also for general data processing and applied statistical computing in a number of fields. These essentially lay the foundation for career development as a data scientist in the geographic domain.

**All the class will be recorded. The video link will be posted in the syllabus below**  

### Class roster  ###

  - [Class roster with the student names and their geographic location](http://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2024_foto/course_geocomp_ml_04-05_2024_roster.html)

---

### Syllabus overview ###


<table>
    <tr>
        <td>Subject</td>
        <td>n. lectures</td>
    </tr>
    <tr>
        <td>LINUX:</td>
        <td>1</td>
    </tr>
    <tr>
        <td>BASH/AWK:</td>
        <td>2</td>
    </tr>
    <tr>
        <td>GDAL/PKTOOLS:  </td>
        <td>4</td>
    </tr>
    <tr>
        <td>GEO-PYTHON:</td>
        <td>3</td>
    </tr>
    <tr>
        <td>GRASS:</td>
        <td>3</td>
    </tr>
    <tr>
        <td>ML:</td>
        <td>6</td>
    </tr>
</table>

---

### Detailed syllabus ###

Below we are going to list day by day the final syllabus with the relatives links to the materials and recorded video.

## Lecture 1: Tuesday, 2nd of April, 2024.
### Getting started: knowing each other and course introduction.

This session introduces the objective of the course and a round table among the students and the teachers.  

Recorded lecture can be found [here1](https://youtu.be/YQB3UD0rYqI)


Time below in CEST

* 17:00 - 17:10  Tushar Sethi: background/interest & course objective - communication/administration role.
* 17:10 - 17:30  Giuseppe Amatulli: [background/interest & bash/gdal/pktools introduction - teaching role](http://spatial-ecology.net/docs/source/lectures/lect_20240402_IntroGeocomp_GA.pdf).
* 17:30 - 17:45  [Antonio Fonseca: background/interest & machine learning introduction - teaching role](lect_20240402_IntroML_AF.pdf).
* 17:45 - 18:00  [Francesco Lovergine: background/interest & geo-python introduction - teaching role](http://spatial-ecology.net/docs/source/lectures/lect_20240402_GeoPython_FL.pdf)
* 18:15 - 18:30  Break
* 18:30 - 19:15  Students round table + QA of the course. 
* 19:15 - 19:45  OSGeoLive 16.0 Virtual Machine installation review, QA & troubleshooting.

<!---

* Get to know each other: trainers and participants (30-40min Round-table )
* [Course objectives and schedule.](http://spatial-ecology.net/docs/source/lectures/lect_20240404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 10min Lecture)
* [Course policy, homeworks, final project, trainers/students interactions.)](http://spatial-ecology.net/docs/source/lectures/lect_20240405_policy.pdf) (Giuseppe Amatulli - 10min Lecture)
* [Linux environment, why and what to use to handling BigData.](http://spatial-ecology.net/docs/source/lectures/lect_20240404_CourseIntro_GeoCompML.pdf) (Giuseppe Amatulli - 20min Lecture)
* [Spatial Statistics: fundamentals and philosophical aspects.](http://spatial-ecology.net/docs/source/lectures/lect_20240405_SpatStat.pdf) (Giuseppe Amatulli - 20min Lecture)
* [Machine learning introduction.](http://spatial-ecology.net/docs/source/lectures/lect_20240405_IntroML.pdf) (Antonio Fonseca - 20min Lecture)

--->


## Catch-up session 0: Wednesday, 3rd of April, 2024

This session is dedicate to the students that encounter problems for the OSGeoLive 16.0 Virtual Machine installation. Be sure that following OSGeoLive 16.0 Virtual Machine features are present: 

* The OSGeoLive 16.0 Virtual Machine internet connection is working fine - open a browser and search for something. 
* The OSGeoLive 16.0 Virtual Machine screen is wide and you can expand and switch back to your native OS without issues.
* The shared folder has been correctly installed. Check if the /media/sf_LVM_shared is visible. 
* The /home/user/SE_data/ has been download and that the /media/sf_LVM_shared/my_SE_data is visible and you can see the sub-folder.
* The OSGeoLive 16.0 Virtual Machine Keyboard Layout has been set in accordance to your keyboard, and that the letter that you type correspond in what you see. 

If one or more of these features are not working properly show up in the Catch-up session. 

## Lecture 2: Thursday, 4th of April, 2024. 
### Jump start into LINUX Bash programming (Giuseppe Amatulli)

During this session we explore and practice the basics of BASH terminal command line. The acquired skills will be used in all following sections.

Recorded lecture can be found [here](https://youtu.be/ZHlB2RPWOEU).

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


## Lecture 3: Tuesday, 9th of April, 2024.
### Discovering the power of AWK programming language (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/tmYshUgq1j8).

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


* [Explain GSIM text files](http://spatial-ecology.net/docs/build/html/CASESTUDY/manipulate_GSIM.html) (Listen to the recorded video lecture and proceed with self-learning mode.)
	* Data exploration (Hands on tutorial).
	* Count number of observations
	* Count how many observations per date
	* Monthly MEAN distribution
	
**Suggested assignments:**

Please send the jupyter file or sh file (name as name\_surname.ipynb or name\_surname.sh ) as e-mail attachment  to g.amatulli@spatial-ecology.net.

Using the bash (and/or awk) language manipulate the GSIM/US*.mon files in order to create txt files, one for each month-year, that includes the station ID, latitude, longitude and the MEAN value.
 
The final output will be n text files (form *FirstDateOfTheSeries* to LastDateOfTheSeries) with the following structure: 


    cat 2002-01.txt 

 Gsim.no     latitude    longitude   MEAN   
 US_0001971	33.79427255 -84.4743747 0.916785714285714  
 US_0001977	33.65666667 -84.6736111 74.5558064516129  

In case you wanna manipulate your own txt (or csv) files, fell free to do it by implementing everything in bash (and/or awk). 
You can perform:
- data summary 
- table re-organization    
- data filtering 


---

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

    ## loop trough the dates.txt 

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

---

#########Solution 4 #########

From Issam Boukhris; it allows the closing of the file and can be run in the VM

	sudo bash -c 'awk -F "," '\''{
	    if ($1 ~ "gsim.no") split($1, a, ":");
	    station = a[2];
	    if ($1 ~ "longitude") split($1, b, ":");
	    long = b[2];
	    if ($1 ~ "latitude") split($1, c, ":");
	    lat = c[2];
	    if (NF>5 && $1 != "NA" && $2 != "NA") {
	        print station, long, lat, $2 >> "output1/"substr($1,1,7)".txt";
	        close("output1/"substr($1,1,7)".txt"); print echo substr($1,1,7)
	    }
	}'\'' US_*'


## Lecture 4: Thursday, 11th of April, 2024.
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/phm8PlXGzC4).

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.

* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Suggested assignments:**

Get familiar with *gdalinfo* & *gdal_edit.py* using your data or the tif file stored in the SE_data. 

---

Watch this lecture to get more insight on the different data type  
* 
[Numerical System Decimal vs Binary](http://spatial-ecology.net/docs/source/lectures/lect_20220414_Floating_point.pdf). [Recorded lecture: 1:28:45 - 1:48:00](https://youtu.be/kBRW2Z5jX8M?t=5328)

---

These assignments do not need to be delivered, nonetheless we suggest doing it in order to get familiar with gdal_calc.py and with the issues of selecting the correct datatype and gdal_calc formula.

* [Data type in GTiff](http://www.spatial-ecology.net/docs/build/html/CASESTUDY/Data_type_GTiff.html)

## Lecture 5: Tuesday, 16th of April, 2024.  
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/zXo-brJJmQM).

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.


* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* [Understanding data type](http://spatial-ecology.net/docs/source/lectures/lect_20240414_Floating_point.pdf) (Lecture)
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

## Lecture 6: Thursday, 18st of April, 2024.  
### Manipulate geographical data with PKTOOLS (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/UmEkNCi7udQ).

This section introduces data manipulation for geospatial data processing on the command line using [PKTOOLS](http://pktools.nongnu.org/html/index.html).

* [for raster and vector analysis](http://spatial-ecology.net/docs/build/html/PKTOOLS/pktools_osgeo.html) .
	* Masking operation
	* Building a mosaic
	* Image histogram and classification
	* Zonal statistic

**Compulsory assignments:**

Before the 23rd of April, 2024, watch the "Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example" lecture (all links in Lecture 7). On the 23rd of April, 2024 we will do a QA and a review of gdal and pkstools commands. Feel free to present your scripting procedure for receiving feedback and suggestions.

**Suggested assignments:**

* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.
* Using pktools command performs: masking, filtering, histogram, re-classification, zonal statistic. 


## Lecture 7: Tuesday, 23rd of April, 2024.
### Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example (Giuseppe Amatulli).


[Video Recording of the lecture](https://youtu.be/GfmCRNMtFfs?si=OZEKNGNt3VB0elcV)

Recorded of the QA can be found [here](https://youtu.be/qQxqZWWZr6c).

This section introduces a real example of satellite data [GLAD ARD](https://glad.umd.edu/ard/home) processing using [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html) and [PKTOOLS](http://pktools.nongnu.org/html/index.html) in a Bash environment.

* [Spectral Temporal Information for Missing Data Reconstruction (STIMDR) of Landsat Reflectance Time Series](https://www.mdpi.com/2072-4292/14/1/172)

* [A method for predicting large-area missing observations in Landsat time series using spectral-temporal metrics](https://www.sciencedirect.com/science/article/pii/S030324342100026X?via%3Dihub)

* [Temporal interpolation of landsat images](http://spatial-ecology.net/docs/build/html/CASESTUDY/temporal_interpolation.html) (A.)
	* Data download & cropping
	* Image characteristics
	* Temporal composite
	* Temporal interpolation
	* Plotting the temporal interpolation for band 1
	* Assessing the temporal interpolation
* [Temporal analysis: Approximation](http://spatial-ecology.net/docs/source/lectures/lect_20240423_Approximation.pdf) 
[Lonzhu Shen : Video Recording of the lecture 45:20 - 1:04:50 ](https://youtu.be/GfmCRNMtFfs?si=OZEKNGNt3VB0elcV)
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

## Lecture 8: Thursday, 25th of April, 2024.
### Case study presentation: Estimation of tree height (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/S_k5_P0pGls). 

* [Estimation of tree height using GEDI dataset](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html) - [Video recording from last year](https://youtu.be/x1AEagMyIe0?t=5220)

**Compulsory assignments:**

* [Random Forest](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_03RF_pred.html) (RF) (A.) - [Video recording from last year](https://youtu.be/DlxlqCXhY7I?t=4780)
	* Random Forest basic concept
	* Avoid random forest over-fitting
	* Optimization of RF
	* Prediction of RF model on raster tif
	
## Catch-up session 1: Tuesday, 30th of April, 2024

Students will meet online with the teachers to review past material and solving additional doubts. 

Recorded of the QA can be found [here](). Password has been sent by e-mail on March 28  (it will be the same pass-code for all recordings).

## Catch-up session 2: Thursday 2nd of May, 2024.

Students will meet online with the teachers to review past material and solving additional doubts. 

Recorded of the QA can be found [here](). Password has been sent by e-mail on March 28  (it will be the same pass-code for all recordings).

## Lecture 9: Tuesday, 7th of May, 2024.
### Geospatial python (Francesco Lovergine)

Recorded lecture can be found [here](https://youtu.be/eIlefOF9OLU).

* Geospatial python 
	* [Python introduction](https://spatial-ecology.net/docs/build/html/PYTHON/Python_Intro.html)
	* [Suggestions about Python management](https://spatial-ecology.net/docs/build/html/PYTHON/PythonEnvs.html)
	* [Rasterio](https://rasterio.readthedocs.io/en/latest/index.html#) [basics](https://spatial-ecology.net/docs/build/html/PYTHON/RasterIO_Intro.html) 
	* [Using python for point location raster value extraction](https://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_02Predictors_extraction.html)
	* [pyjeo](https://pyjeo.readthedocs.io/en/latest/index.html) basics
		- Integrate pyjeo with last year video lectures. Please adapt the script if there is something that is not working. 
		- [pyjeo 1](https://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023.html#lecture-9-3nd-of-may-2023)
		- [pyjeo 2](https://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023.html#lecture-10-5th-of-may-2023)

## Lecture 10: 9th of May, 2024.
### Geospatial python (Francesco Lovergine)

Recorded lecture can be found [here](https://youtu.be/Vgn8zjU5124). 

* [Review pyjeo installation procedure](https://spatial-ecology.net/docs/build/html/PKTOOLS/pyjeo_introduction.html)
* Basic pyjeo
* Integrate pyjeo with last year video lectures. Please adapt the script if there is something that is not working. 
		- [pyjeo 1](https://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023.html#lecture-9-3nd-of-may-2023)
		- [pyjeo 2](https://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023.html#lecture-10-5th-of-may-2023)
		- [pyjeo 3](https://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_ml_04-05_2023.html#pyjeo-in-combination-with-sklearn-pieter-kempeneers)
* [Generalities about OGC Geospatial extensions for SQL](https://spatial-ecology.net/docs/build/html/PYTHON/OGCSQL.html)

## Lecture 11: Tuesday, 14th of May, 2024.
### Machine Learning Introduction, Support Vector Machine (Antonio Fonseca)

In this class we will set the main fundamentals to implement machine learning in geo science. We will use the data-set and explanation described in [Estimation of tree height using GEDI dataset - Data explore](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_01DataExplore.html).

Recorded lecture can be found [here](https://youtu.be/znueaH9C-5Q). 

* [Presentation](http://spatial-ecology.net/docs/source/lectures/lect_20240514_IntroML_SVM_Class1.pdf) (F.)
	
* [Jupyther notebook](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04SVM_pred_2024.html) (F.)

* Intro to machine learning (F.)
	* Defining learning
	* Supervised vs Unsupervised learning
	* The framework of learning algorithms

* Intro to supervised learning.
	* Support Vector Machine (SVM)(F.)
	* Optimization of SVM
	* Extension of SVM to regression (SVR)

## Lecture 12: Thursday, 16th of May, 2024.
### Machine Learning - Perceptron (Antonio Fonseca)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/XxJiIeQxIGrwewk51W77KKKTSs7qXwzL1AHdP_pgn49694wvtxtMD0Y_ms74jFeb.9n-br-V8qQ7ioPO5).

* [Presentation](http://spatial-ecology.net/docs/source/lectures/lect_20240514_IntroML_SVM_Class1.pdf) (F.)
	
* [Jupyther notebook](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_04SVM_pred_2024.html) (F.)

* Intro to machine learning (F.)
	* Defining learning
	* Supervised vs Unsupervised learning
	* The framework of learning algorithms

* Intro to supervised learning.
	* Support Vector Machine (SVM)(F.)
	* Optimization of SVM
	* Extension of SVM to regression (SVR)

## Lecture 13: Tuesday, 21st of May, 2024.
### Introduction to GRASS (1) (Giuseppe Amatulli)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/mzU-HkCdrhiRga_JNS60numEJYj30pvz590zbgj7_r3nf71DIVlrS-oUB_0qyVS7.pLmnQs2CBfv3_yns).

   * [GRASS introduction](http://spatial-ecology.net/docs/source/lectures/lect_20240521_grass_intro.pdf)
   * [Working on an existing GRASS project](https://spatial-ecology.net/docs/build/html/GRASS/grass_intro.html)
		* GRASS GUI
		* GRASS command structure
		* GRASS working environment
		* GRASS Location/Mapset
		* GRASS scripting procedure in BASH

   * [Start a new GRASS project](https://spatial-ecology.net/docs/build/html/GRASS/grass_newproject.html)
		* Analize the dataset
		* Create a LOCATION and MAPSET stored in a temporary folder 
		* Create a LOCATION and MAPSET stored in a folder that can be accessed later on.
		* GRASS add-ons

## Lecture 14: Thursday, 23rd of May, 2024.
### Hydrology analysis using GRASS (3) (Giuseppe Amatulli)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/5xp8rpDodfmnEeYSSnWM0zSW_grGyPvyVe4pQFi2hhT2LETRrM1sbOSEp2eEdl5u.aNcR_zYib1S5uO5a).

   * [Using GRASS for stream-network extraction and basins delineation](https://spatial-ecology.net/docs/build/html/GRASS/grass_hydro.html)
		* Flow direction algorithms
		* Prepare GRASS for hydrography extraction 
		* Inputs dataset
		* First run: compute MFD flow accumulation for each tile
		* Merge the flow accumulation tiles
		* Second run: copute stream and basin using the seamless South America Flow Accumulation
		* Final step: combine the tiled basins and streams

## Lecture 15: Tuesday, 28st of May, 2024.
### Machine Learning -  Perceptron (Antonio Fonseca)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/FaT2x7mLDE2O-OakRcQ5snlo53NgUSivs5jXIjWUT0y1OiBwcY-lcJ2WCNFBUcaE.QqGEAoL8OolvN7Tt).

* [Presentation](http://spatial-ecology.net/docs/source/lectures/lect_20240528_Optmizers_Perceptron_Class3.pdf)
	- The universal approximator
	- Intro to optimizers
	- Intro to gradient descent and optimizers

* [Jupyther notebook 1](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_05Perceptron_intro_2024.html)
* [Jupyther notebook 2](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_06Perceptron_complete_2024.html)


## Lecture 16: Thursday, 30th of May, 2024.
### Machine Learning - Architecture of Neural Networks  (Antonio Fonseca)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/mjN_tkorQOlDdJcyyNeOjj2WOwBMO_s2P32GmLFBfXp5cT3nr_Wl9lfEh6Wk9MT5.T1na1wA6Yz8dyop-).

* [Perceptron & Neural Nets](http://spatial-ecology.net/docs/source/lectures/lect_20240530_Optmizers_Perceptron&NeuralNets_Class4.pdf  )

* [Estimation of tree height using GEDI dataset - Neural Network 1 - 2024](http://spatial-ecology.net/docs/build/html/CASESTUDY/Tree_Height_07FeedForward_Networks_2024.html)

## Lecture 17: Tuesday, 4th of June, 2024.
### Machine Learning - Capacity, Overfitting, Underfitting - Convolutional Neural Networks (Antonio Fonseca)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/qDTB-DqEEi3pHzQO8zI6f1QvNpgWXa2no-as_KU_pg2sLenWrKGf7xXvWdo3g-FO.Mnp7cWGI-IGalaNE).

* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20240604_NeuralNets_CNNs.pdf)
	* Quick recap
	* Extra regularization techniques
	* Capacity, Overfitting and Underfitting
	* Debugging tips
	* Family of optimizers
	* Tutorial: more features and different optimizers

## Lecture 18:  Thursday, 6th of June, 2024.
### Machine Learning - Papers discussion (Antonio Fonseca)

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/GhPAgq8ErZNsDwlN0qbz6TYub5GHf7uUKKtXVvBiONPoZm4wTBOVQG2hCKkTQ3oF.qAws8kAUhuzwa0MD).


* [Feedforward Neural Networks](http://spatial-ecology.net/docs/source/lectures/lect_20240604_NeuralNets_CNNs.pdf)
	* Quick recap
	* Extra regularization techniques
	* Capacity, Overfitting and Underfitting
	* Debugging tips
	* Family of optimizers
	* Tutorial: more features and different optimizers
	
* [Convolutional Neural Networks](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite_2024.html)
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images
	* Kernels, padding, pooling
	* Classification tasks
	* Tutorial: data batching, classification of satellite images

Discussion papers:

* [Deep learning‑based landslide susceptibility mapping](http://spatial-ecology.net/docs/source/lectures/disc_20240606_landslideSusceptibility.pdf)
* [Explainability in wind farm planning: A machine learning framework for automatic site selection of wind farms](http://spatial-ecology.net/docs/source/lectures/disc_20240606_windFarm.pdf)

## In-person week: June 10-14, coding hackathon in Matera, Italy


### Day 0: Sunday, 9 June 2024

* Icebreaker/Social dinner: at Osteria Malatesta - Matera (https://maps.app.goo.gl/fFf18j9v6WqaP6fHA)
	* Antonio arrival (at Bari airport )	 

### Day 1: Monday, 10 June 2024

* 9:00-17:00: Student coding hackathon 

### Day 2: Tuesday, 11 June 2024

* 9:00-17:00:  Student coding hackathon

* 11:00-13:00  Antonio lecture

Recorded lecture can be found [here](https://yale.zoom.us/rec/share/B4WmyCRzS3W4KwGIb6Em1Xv7AQuIuPC4ASez8hS1AQDapV0fpAI6xtUip8ZYjVza.we4YNzUH16B_prCA)

	* [Unsupervised Learning](http://spatial-ecology.net/docs/source/lectures/lect_20240611_NN_Unsupervised_Learning.pdf)

	* [Autoencoder (AE), Variational Autoencoder (VAE)](http://spatial-ecology.net/docs/build/html/CASESTUDY/NN_Unsupervised_2024.html)

* 20:00-22:00: Social event: Birrificio 79 (https://maps.app.goo.gl/4ahWEgDjHKEkBxx6A)
 
### Day 3: Wednesday, 12 June 2024

* 9:00-17:00: Student coding hackathon
	* Tushar arrival (at Gioia)

### Day 4: Thursday, 13 June 2024

* 9:00-17:00: Final project Student presentation
	* Milutin arrival late in the morning in Matera.
	* Birfoot Birrificio Artigianale, Via G. Marconi, 75100 Matera MT, https://maps.app.goo.gl/nBKRLVvbUedcSzZV9

### Day 5: Friday, 14 June 2024

* 9:00-10:00: GEO-OPEN-HACK 2024 - an OEMC Initiative on open big data and tools (Milutin Milenkovic)
* 10:00-16:00: Final project Student presentation
* 16:00-20:00: Matera guide tour
* 20:00-22:00: BBQ at Belvedere Murgia Timone (https://maps.app.goo.gl/Qr1cCt95P3upELJq6)

### Day 6: Saturday, 15 June 2024

### Day 7: Sunday, 16 June 2024

Tushar departure (Bari airport at 10:45, departure at 11:45)

## In-person week: June 17-21, extended study group in Matera, Italy

### Day 8: Monday, 17 June 2024

Meeting Milutin Antonio Giuseppe: Estimation of tree height using GEDI dataset

### Day 9: Tuesday, 18 June 2024

Meeting Milutin Antonio Giuseppe: Estimation of tree height using GEDI dataset

### Day 10: Wednesday, 19 June 2024

Milutin departure (Bari airport at 7:30, departure at 9:25)

### Day 11: Thursday, 20 June 2024

Antonio departure (Bari airport at 7:00, departure at 8:00)	

<!---
## Lecture 17: 6th of June, 2024.
In presence week in Matera, Italy

### Using GPT (Antonio Fonseca)

Recorded lecture can be found [here]().

* [Using GPT as your coding partner](http://spatial-ecology.net/docs/source/lectures/lect_20240606_GPT_for_coding.pdf)
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/CNN_satelite_with_GPT_code_2024.html)

## Lecture 18: 6th of June, 2024.
In presence week in Matera, Italy

### Pyjeo in combination with sklearn (Pieter Kempeneers)

Recorded lecture can be found [here]().

* Classification in python using pyjeo and sklearn
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/Classification_pyjeo_sklearn_2024.html)


## Lecture 19: 6th of June, 2024.
In presence week in Matera, Italy

### Google Earth Engine (GEE) (Francesco Lovergine)

Recorded lecture can be found [here]().

* Use of GEE with Javascripts and python buinding.
	* [Hands on](http://spatial-ecology.net/docs/build/html/CASESTUDY/GEEviaPython_2024.html)

--->