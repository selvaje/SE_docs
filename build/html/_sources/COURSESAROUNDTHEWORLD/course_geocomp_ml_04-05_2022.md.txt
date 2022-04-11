# GeoComp & ML 2022 course
## Geocomputation and Machine Learning for environmental applications
### 


**Online teaching: April and May 2022, 8 weeks**

* Every Tuesday: starting from April 5th, at 3PM - 5:45 PM UTC+0 time
* Every Thursday: ending on   May 26th, at 3PM - 5:45 PM UTC+0 time

**In presence: June, 1 week in Matera, Italy** 

* June 13th - 17th  or June 20th - 24th (to be defined in accordance to the pandemic situation).


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

[Video Recording]()

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