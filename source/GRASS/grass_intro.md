# GRASS Introduction

The object of this page is to start using Grass and to get familiar with some general GIS operations. We are going to use a command line approach. This is to enable carrying out stand-alone processes in the future, and understand step by step each function and the options per function which are available. Let´s start using grass.

We suggest to copy-paste the following command line directly in the bash terminal. 

Considering that GRASS can not working properly under /media/sf_LVM_shared/my_SE_data/ we create a working copy of the SE_data:

    cp -r /home/user/SE_data  /home/user/my_SE_data

**Starting Grass**

Every Grass project has a predefined data structure:

- GISDBASE - Grass data are stored in a directory referred to as a DATABASE “GISDBASE”. This directory has to be created with mkdir or a file manager, before starting to work with GRASS. Within this DATABASE, the projects are organized by project areas stored in subdirectories called LOCATIONs.

- LOCATION - A Location is defined by its coordinate system, map projection and geographical boundaries. The subdirectories and files defining a LOCATION are created automatically when GRASS is started for the first time with a new LOCATION.

- MAPSET - Locations can have many MAPSETs. Each MAPSET is a LOCATION's subdirectory. A new MAPSET can be added at GRASS startup.

    A common problem of basic users is not really using grass but starting a grass section. The main reason is due to the grass data structure and the way a grass section has to be set up before starting!


There are several two ways to use and open GRASS: 

**Start grass by GUI**

    grass74 -wxpython

The Graphical User Interface GUI will ask you to define the GISDBASE, LOCATION and MAPSET to use. If you want you can select the Location wizard to create a new location with newest projection parameters or the Create mapset button to create a new mapset inside a pre-existing location.

**Start grass by command line**

    grass76 -text /media/sf_LVM_shared/my_SE_data/exercise/grassdb/europe/PERMANENT/

Once you are running Grass through the bash shell terminal you can always start the graphical user interface with:

    g.gui wxpython &

**GRASS command structure**


| Prefix | Function   | Class type of command        | Example                                                        |
|--------|------------|------------------------------|----------------------------------------------------------------|
| d.*    |   display  | graphical output             | d.rast: views raster map d.vect: views vector map              |
| db.*   |  database  | database management          | db.select: selects value(s) from table                         |
| g.*    |   general  | general file operations      | g.rename: renames map                                          |
| i.*    |   imagery  | image processing             | i.smap: image classifier                                       |
| ps.*   | postscript | map creation format          | ps.map: map creation in Postscript                             |
| r.*    | raster     | raster data processing       | r.buffer: buffer around raster features r.mapcalc: map algebra |
| r3.*   | voxel      | raster voxel data processing | r3.mapcalc: volume map algebra                                 |
| v.*    | vector     | vector data processing       | v.overlay: vector map intersections                            |
|--------|------------|------------------------------|----------------------------------------------------------------|



For detailed instructions on grass command syntax and use, go to the [GRASS online manual](https://grass.osgeo.org/learn/manuals/) or type man and function name. As an example

    man r.info

**Grass working environment**

The g.gisenv command informs you of your current grass environment settings

    g.gisenv

If you started grass correctly you should visualize the following lines on your terminal

GISDBASE=/home/user/ost4sem/grassdb

LOCATION_NAME=europe

MAPSET=PERMANENT

MONITOR=x2

GRASS_GUI=text

GRASS 7.4.0 (europe):~ > 


Running grass through the bash shell terminal allows you to use all command line functionality of both grass and shell. As an example you can type:

    ls

and visualize all files available in your shell current working directory. This means that all your output files produced by bash command lines functionality will be saved in the current working directory (if not specified differently). Many non-geographical grass output features such as text file reports or images will be saved as well in the current working directory. 

The GRASS 7.4.0 (europe):~ > inform you are currently working in the home folder. See

    pwd

for double checking the same information using a bash command instead of the grass 

    g.gisenv

command.

It is a good working habit within Grass to set bash shell working directory the same as your GRASS LOCATION folder.

    cd /home/user/my_SE_data/exercise/grassdb

On the terminal you will no longer see

GRASS 7.6.0 (europe):~ >
 
but

GRASS 7.6.1 (europe):/home/user/my_SE_data/exercise/grassdb:~ > 

and you will be aware tif your current bash shell working directory match your grass location directory.
