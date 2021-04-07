# Prepare OSGeoLive for Spatial Ecology courses


In order to execute the Spatial Ecology exercise we will need first install the OSGeoLive Linux Virtual Machine and then populate with additional software and data.

[OSGeoLive](https://live.osgeo.org/en/index.html) is a self-contained bootable DVD, USB thumb drive or Virtual Machine based on Lubuntu, that allows you to try a wide variety of open source geospatial software without installing anything. It is composed entirely of free software, allowing it to be freely distributed, duplicated and passed around (source https://live.osgeo.org/en/index.html)

You can follow the below instructions, moreover the [OSGeoLive installation YouTube video](https://youtu.be/wnRkkpaxqBU) can guide along the full procedure.  

For running a Virtual Machine in your OS we need a virtualization software such as [Virtualbox](https://www.virtualbox.org/) and a vmdk file that contains the virtualized OS.

**Install Virtualbox**

Open you browser and go to [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads) and base on your OS download the Virtualbox executable and install it. 

**Download OSGeoLive**

Open you browser and go to [https://sourceforge.net/projects/osgeo-live/files/](https://sourceforge.net/projects/osgeo-live/files/). Click on the last version-folder and proceed to  download the osgeolive-??.0-amd64.vmdk.7z. At the time of writing the last version is 13 so vmdk file is osgeolive-13.0-amd64.vmdk.7z. The osgeolive-13.0-amd64.vmdk.7z is a quite large file therefore according to your Internet connection it can take several hours. When the download is finished unzipped using [7zip](https://www.7-zip.org). Mac users can use [The Unarchiver](https://apps.apple.com/in/app/the-unarchiver/id425424353?mt=12) for unzip the osgeolive-13.0-amd64.vmdk.7z. A this point you are ready to load the osgeolive-13.0-amd64.vmdk inside Virtualbox.

**Install OSGeoLive inside Virtualbox**

Lunch Virtualbox from OS and follow the below instructions. 

![title](Installation_vm_osgeo-live13_p0.png)
![title](Installation_vm_osgeo-live13_p1.png)
![title](Installation_vm_osgeo-live13_p2.png)
![title](Installation_vm_osgeo-live13_p3.png)
![title](Installation_vm_osgeo-live13_p4.png)
![title](Installation_vm_osgeo-live13_p5.png)
![title](Installation_vm_osgeo-live13_p6.png)
![title](Installation_vm_osgeo-live13_p7.png)
![title](Installation_vm_osgeo-live13_p8.png)
![title](Installation_vm_osgeo-live13_p9.png)

**Test your OSGeoLive Virtual Machine**

If you follow all the steps correctly the OSGeoLive Virtual Machine you should pop-up in the Virtual Box window showing something like this:

![title](Installation_vm_osgeo-live13_p10.png)

If the screen is very small try to enlarge, and if the enlargement is not working properly try to reboot. Sometime the Virtual Box guest edition is not kick-in so you have to redo the procedure. 

Open the bash terminal (green icon in the down left corner) and run line by line the following codes. The sudo password is "user". For security what you type is not shown, anyway it is recorded. After typed the password press enter.

Update the OS. This operation can last few minutes. Be patient. If during the installation, some screen pop-up asking some question just accept the default option. 

    sudo apt update      # update the repositories
    sudo apt upgrade -y  # installation of the sw

Add to Virtualbox additional add-on to improve the graphical user interface of the VM.
If during the installation some screen pop-up asking some question just accept the default option.
From the Virtualbox menu press Device > Insert Guest Addition CD image

    cd /media/user/VBox_GAs_*
    sudo ./VBoxLinuxAdditions.run

Another test that you should do it is to test if the shared folder is correctly done. Open a bash terminal and run 

    ls /media/sf_LVM_shared
   
If are able to list the folder then means that the sharing folder operation is properly done. Moreover try to insert a file from your host OS in the LVM_shared folder and see if visible in the OSGeoLive. 

If you get an error "ls: cannot access '/media/sf_LVM_shared': No such file or directory" means that you did not correctly done the sharing folder operation so try to redo it.

**Populate OSGeoLive with additional software**

At this point the OSGeoLive Virtual Machine is ready to install additional software and data for running Spatial Ecology courses. In the bash terminal run the following lines 

    cd /tmp/
    wget https://raw.githubusercontent.com/selvaje/SE_data/main/exercise/00_install_additional_sw_data_4SE_courses.sh
    sudo bash ./00_install_additional_sw_data_4SE_courses.sh

as before the sudo password is "user".

**Test installed additional software**

In the bash terminal run the following lines one by one. Close the window that each time pop-up.

Test [pktools](http://pktools.nongnu.org/html/index.html)

    pkfilter --help
 
You should see the pkfilter manual instructions 
 
Test [OpenEV](http://openev.sourceforge.net)
 
    source ~/.bashrc
    openev /home/user/jupyter/notebook_gallery/Rasterio/data/world.rgb.tif /home/user/.local/share/cartopy/shapefiles/natural_earth/physical/ne_110m_land.shp

You should see the openev software popup and ope the the tif and shp files. 

Test  [R studio](https://rstudio.com)

    rstudio

You should see the rstudio software pop-up

## Miniconda Settings 

    $ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

Make the miniconda installation script executable

    $ chmod +x Miniconda3-latest-Linux-x86_64.sh

Run miniconda installation script

    $./Miniconda3-latest-Linux-x86_64.sh

choose "yes" along the course of installation

quit and open a new terminal

after successful installation, promote becomes :  

    (base) user@osgeolive$
    
install jupyter-lab    
    
    (base) user@osgeolive$ conda install jupyterlab     
    
## Git Settings 

### First time action 
```
$ cd 
$ git clone https://github.com/selvaje/SE_data.git 
$ cp -r SE_data /media/LVM_shared/my_SE_data
```    
    
### Future routine 

setup
- ~/SE_data : sever copy, sync. with cloud 
- /media/LVM_shared/my_SE_data : working copy, for yourself, always work here

synchronisation 

``` 
$ cd ~/SE_data
$ git pull # synchronise with cloud 
$ rsync -hvrPt --ignore-existing ~/SE_data/* /media/LVM_shared/my_SE_data # local sync.
$ cd /media/LVM_shared/my_SE_data
```

starting working here 
