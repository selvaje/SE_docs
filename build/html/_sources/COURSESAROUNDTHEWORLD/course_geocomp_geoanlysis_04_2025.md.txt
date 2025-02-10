# Geo Comp/Analysis 2025 course
## Geocomputation and geospatial analysis

**Online teaching: April 2025, 2 weeks**

* **Lecture 1**: Tuesday, 1 April at 15:00 - 17:45
* **Catch-up session 1**: Wednesday, 2 April at 15:00 - 16:30 
* **Lecture 2**: Thursday, 3 April at 15:00 - 17:45
* **Lecture 3**: Tuesday, 8 April at 15:00 - 17:45
* **Catch-up session 2**: Wednesday, 9 April at 15:00 - 16:30 
* **Lecture 4**: Thursday, 10 April at 15:00 - 17:45

**In person week: April 2025, week**

* **Hands-on session 1**: Tuesday-Wednesday 15,16 April at 9:00 - 17:00 (PhD candidates)
* **Hands-on session 2**: Thursday-Friday 17,18 April at 9:00 - 17:00
(Technical employee)
**Course objectives**

On this course, students will be introduced to an array of powerful open-source geocomputation tools (GDAL & python) under Linux environment. Students who have never been exposed to programming under Linux are expected to reach a stage where they feel confident to understand and modify advanced open source data processing routines.  Our aim is to equip attendees with powerful tools and hone their ability for independent study afterwards. The acquired skills will be beneficial, not only for GIS related applications, but also for general data processing and applied statistical computing in a number of fields. We aim to provide a sound foundation for career development as a geographic data scientist.

**All the class will be recorded. The video link will be posted in the syllabus below**  

### Class roster  ###

  - [Class roster with the student names and their geographic location](http://spatial-ecology.net/docs/build/html/COURSESAROUNDTHEWORLD/course_geocomp_geoanlysis_foto/course_geocomp_geoanlysis_04_2025_roster.html)

---

### Syllabus overview ###


<table>
    <tr>
        <td>Subject</td>
        <td>n. lectures</td>
    </tr>
    <tr>
        <td>LINUX bash:</td>
        <td>1</td>
    </tr>
    <tr>
        <td>LINUX gdal:  </td>
        <td>1</td>
    </tr>
    <tr>
        <td>LINUX python:</td>
        <td>2</td>
    </tr>
</table>

---

### Detailed syllabus ###

Below we are going to list day by day the final syllabus with the relatives links to the materials and recorded video. Full video playlist cam be found [here]() 

## Lecture 1: Tuesday, 1 April 2025.
### Getting started: knowing each other and course introduction.

This session introduces the objectives of the course followed by an introductory round among the students and teachers.

Recorded lecture can be found [here]()

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_geoanlysis_04_2025 _resume/lect01_geocomp_geoanlysis_01042025.pdf).

* 15:00 - 15:10  Tushar Sethi: background/interest & course objective - communication/administration role.
* 15:10 - 15:25  Giuseppe Amatulli: background/interest & bash/gdal.
* 15:25 - 15:40  Saverio Mancino: background/interest & geopython.
* 16:40 - 17:00  OSGeoLive 16.0 Virtual Machine installation review, QA & troubleshooting.
* 17:00 - 17:15  Break
* 17:15 - 17:45  Linux BASH

During this session we explore and practice the basics of BASH terminal command line. The acquired skills will be used in all following sections.

[Unix/Linux command line](http://spatial-ecology.net/docs/build/html/BASH/bashintro_osgeo.html) (Hands-on tutorial)
	* Starting with Bash
	* Special characters and Quoting
	* The most important commands - Unix/Linux Command Reference
	* Meta-characters and regular expression, their use.
	* Concatenate process (pipe).
	* String manipulation
* [Additional Material: Manipulate text files in bash](http://spatial-ecology.net/docs/build/html/BASH/bashinter_osgeo.html) (Hands-on tutorial)
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

## Catch-up session 1: Wednesday, 2 April 2025

This session is dedicate to the students that encounter problems for the OSGeoLive 16.0 Virtual Machine installation. 

* [Installation and introduction](http://spatial-ecology.net/docs/build/html/VIRTUALMACHINE/Setting_OSGeoLive_for_Spatial_Ecology_course.html)  to the [OSGeoLIve Linux Virtual Machine](http://live.osgeo.org/en/index.html) (Hands-on tutorial)

Be sure that following OSGeoLive 16.0 Virtual Machine features are present: 

* The OSGeoLive 16.0 Virtual Machine internet connection is working fine - open a browser and search for something. 
* The OSGeoLive 16.0 Virtual Machine screen is wide and you can expand and switch back to your native OS without issues.
* The shared folder has been correctly installed. Check if the /media/sf_LVM_shared is visible. 
* The /home/user/SE_data/ has been download and that the /media/sf_LVM_shared/my_SE_data is visible and you can see the sub-folder.
* The OSGeoLive 16.0 Virtual Machine Keyboard Layout has been set in accordance to your keyboard, and that the letter that you type correspond in what you see. 

If one or more of these features are not working properly show up in the Catch-up session. 


## Lecture 2: Thursday, 2 April 2025. 
### Jump start into LINUX Bash programming (Giuseppe Amatulli)


Recorded lecture can be found [here](https://youtu.be/7zb_YNHBtq0).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect02_GDALyGRASS_21112024.pdf).






## Lecture 3: Tuesday, 26th of November, 2024.
### Discovering the power of AWK programming language (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/iiZdt5fNKJE).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect03_GDALyGRASS_26112024.pdf).

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


## Catch-up session 1: Thursday, 28th of November, 2024

Students will meet online with the teachers to review past material and solving additional doubts. 


Recorded of the QA can be found [here](https://youtu.be/2x4V8atuqVA).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect04_GDALyGRASS_28112024.pdf)

## Lecture 4: Tuesday, 3rd of December, 2024.
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/tHElUjQVcwc?si=KRhLxqLKj830sucY).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect05_GDALyGRASS_03122024.pdf)

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

## Lecture 5: Thursday, 5th of December, 2024.  
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here](https://youtu.be/X1VW9HrMJyU).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect06_GDALyGRASS_05122024.pdf)

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


## Catch-up session 2: Tuesday, 10th of December, 2024

Recorded of the QA can be found [here](https://youtu.be/F-j4-ap4C6Q).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect07_GDALyGRASS_10122024.pdf)

Students will meet online with the teachers to review past material and solving additional doubts. 

Presentation: Random Forest Regression for Urban Heat Island Mitigation in a Heritage City: Matera" (Juana Mercedes Perlaza Rodriguez)

The teacher will point video recording and material on the use PKTOOLS.
* [Manipulate geographical data with PKTOOLS](https://youtu.be/UmEkNCi7udQ).
* [Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example](https://youtu.be/GfmCRNMtFfs?si=OZEKNGNt3VB0elcV)

Recorded of the QA can be found [here]().

## Lecture 6: Thursday, 12th of December, 2024.
### Introduction to GRASS (1) (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/XlYLkgCm55A).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect08_GDALyGRASS_08122024.pdf)


   * [GRASS introduction](http://spatial-ecology.net/docs/source/lectures/lect_20241212_grass_intro.pdf)
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

## Lecture 7: Tuesday, 17th of December, 2024.
### Hydrology analysis using GRASS (2) (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/230t0J_H9TY).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect09_GDALyGRASS_17122024.pdf)

   * [Using GRASS for stream-network extraction and basins delineation](https://spatial-ecology.net/docs/build/html/GRASS/grass_hydro.html)
		* Flow direction algorithms
		* Prepare GRASS for hydrography extraction 
		* Inputs dataset
		* First run: compute MFD flow accumulation for each tile
		* Merge the flow accumulation tiles
		* Second run: copute stream and basin using the seamless South America Flow Accumulation
		* Final step: combine the tiled basins and streams

## Lecture 8: Thursday, 19st of December, 2024.
### Machine Learning using GRASS (3) (Giuseppe Amatulli)

Recorded lecture can be found [here](https://youtu.be/P7bJn_Lbj4A).

Transcript summary lecture can found [here](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/course_geocomp_11-12_2024_resume/lect10_GDALyGRASS_19122024.pdf)

* [SDM1 : Montane woodcreper - Gecomputation for the Random Forest model using GRASS](https://spatial-ecology.net/docs/build/html/GRASS/SDM1_MWood_gecomp4GRASS.html)
* [SDM1 : Montane woodcreper - Random Forest Model using GRASS](https://spatial-ecology.net/docs/build/html/GRASS/SDM1_MWood_GRASSmodel.html)