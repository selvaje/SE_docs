# Geo Comp/Analysis 2025 course
## Geocomputation and geospatial analysis

**Online teaching: April 2025, 2 weeks**

* **Lecture 1**: Tuesday, 1 April at 15:00 - 17:45 (15min break)
* **Catch-up session 1**: Wednesday, 2 April at 15:00 - 16:30 
* **Lecture 2**: Thursday, 3 April at 15:00 - 17:45 (15min break)
* **Lecture 3**: Tuesday, 8 April at 15:00 - 17:45 (15min break)
* **Catch-up session 2**: Wednesday, 9 April at 15:00 - 16:30 
* **Lecture 4**: Thursday, 10 April at 15:00 - 17:45 (15min break)

**In person week: April 2025**

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

Transcript summary lecture can found [here]().

* 15:00 - 15:10  Tushar Sethi: background/interest & course objective - communication/administration role.
* 15:10 - 15:25  Giuseppe Amatulli: background/interest & bash/gdal.
* 15:25 - 15:40  Saverio Mancino: background/interest & geopython.
* 16:40 - 17:00  OSGeoLive 16.0 Virtual Machine installation review, QA & troubleshooting.
* 17:00 - 17:15  Break
* 17:15 - 17:45  Linux BASH

During this session we explore and practice the basics of BASH terminal command line. The acquired skills will be used in all following sections.

* [Unix/Linux command line](http://spatial-ecology.net/docs/build/html/BASH/bashintro_osgeo.html) (Hands-on tutorial)
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

* watch the following videos for additional bash command lines.

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


## Lecture 2: Thursday, 3 April 2025. 
### Manipulate geographical data with GDAL/OGR (Giuseppe Amatulli).

Recorded lecture can be found [here]().

Transcript summary lecture can found [here]()

This section introduces data manipulation for geospatial data processing on the command line using [GDAL & OGR](https://gdal.org/) libraries.

* [GDAL/OGR](http://www.spatial-ecology.net/docs/build/html/GDAL/gdal_osgeo.html)  for raster and vector analysis.
	* [GeoTIFF format](https://gdal.org/drivers/raster/gtiff.html)
	* Understanding NoData Value
	* Openev & QGIS for raster and vector visualization
	* [Geographic Projections database](https://spatialreference.org/)
	* The use of .VRT for splitting and merging images

**Suggested assignments:**

* These assignments do not need to be delivered now, nonetheless do it in order to get familiar with the gdal/ogr command line topics. In two weeks, when all the geographic tools will be covered, you will need to handling a scripting procedure that prepare the geographic dataset for your final project, so better to start now :-).  

Below, some suggestions of possible operations:

* Start to prepare the geographic dataset for your final project.  
	* Using wget and/or curl download geographic dataset from an official repository
	* Assess and re-align geographic extent and pixel resolution (gdal_edit.py) 
	* Using gdal command performs: cropping, merging (vrt+gdal_translate), re-projecting.


Additional material on the use PKTOOLS.
* [Manipulate geographical data with PKTOOLS](https://youtu.be/UmEkNCi7udQ).
*  [Multicore operation within gdal and pktools](http://spatial-ecology.net/docs/build/html/BASH/bashxargs_osgeo.html)
* [Manipulate Landsat data with GDAL and PKTOOLS for a gap filling example](https://youtu.be/GfmCRNMtFfs?si=OZEKNGNt3VB0elcV)



## Lecture 3: Tuesday, 8 April 2025.
### Jump start into Python programming (Saverio Mancino)

* Jupyter environment for Python programming,
* Introduction to Python coding,
* Pandas and Numpy libraries for data management and processing, 

## Catch-up session 2: Wednesday,  9 April 2025
Recorded of the QA can be found [here]().

Transcript summary lecture can found [here]()

Students will meet online with the teachers to review past material and solving additional doubts. 

## Lecture 4: Thursday, 10 April 2025. 
### Python libraries for geospatial data analysis  (Saverio Mancino).

* Matplotlib and Seaborn for scientific plots, 
* Rasterio for raster processing and visualization,
* Exploring Geopandas for vector processing and visualization.
