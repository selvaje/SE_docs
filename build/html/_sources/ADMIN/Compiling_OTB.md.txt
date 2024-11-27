# Compiling OTB from source
**Farzad Vahidi Mayamey**

We used the instructions in this webpage: compiling OTB

We went through SuperBuild installation : Build OTB and all dependencies

Only change the following command in the instructions to this:

    cmake -D OTB_USE_SHARK=ON CMAKE_INSTALL_PREFIX=~/OTB/install ../otb/SuperBuild to turn on SHARK after compiling.

During the procedure we get some errors, and we solved them as follow:

1. SWIG installation

run this command $sudo apt install SWIG

2. Error for EXPAT

The old version of EXPAT (expat-2.3.0.tar.gz)is no longer available with previous url, so we manually downloaded from here and replaced it in this directory: /home/user/OTB/build/EXPAT/src

3. SQLITE version incompatibility

--> delete sqlite.zip in this directory: /home/user/OTB/build/SQLITE/src

--> delete all the lines inside ".log" files in this directory /home/user/OTB/build/SQLITE/src/SQLITE-stamp to install sqlite again

--> change the url in this file: /home/user/OTB/build/SQLITE/src/SQLITE-stamp/SQLITE-urlinfo.txt

from http://www.sqlite.org/2015/sqlite-amalgamation-3080801.zip

to https://www.sqlite.org/src/zip/0c55d179/SQLite-0c55d179.zip

I highly recommand not to add the OTB directory to PATH because of some gdal confusions, instead you can run it from it's directory everytime; like this:

~/OTB/superbuild_install/bin/otbcli_KMeansClassification

You can use the instructions on this page for better understanding of KMeansClassification with otb
