# GEO-OPEN-HACK-2024
## Big Geospatial Data Hackathon with Open Infrastructure and Tools - 24 - 28 Jun 2024 - IIASA - Vienna

 [IIASA GEO-OPEN-HACK-2024 announcement agenda](http://spatial-ecology.net/docs/source/COURSESAROUNDTHEWORLD/doc_GEO-OPEN-HACK-2024.pdf)


### Monday: Geo-Processing with HPC (Giuseppe Amatulli)

* [Geocomputation at High Performance Computing Cluster (HPC)](https://spatial-ecology.net/docs/build/html/HPC/hpc_setting.html)

```
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc01_split_tif.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc02a_resampling_tif_forloop.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc02b_resampling_tif_ampersand.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc02c_resampling_tif_xargs.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc02d_resampling_tif_njobs.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc02e_resampling_tif_arrayjobs.sh
```

* [Use of GRASS in HPC](https://spatial-ecology.net/docs/build/html/HPC/hpc_setting_grass.html)

```
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc03a_grass_tmp.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/hpc03b_grass_dev.sh
```

### Tuesday: Geo-python with HPC (Pieter Kempeneers)

* [pyjeo: an open source image processing library in Python](https://spatial-ecology.net/docs/build/html/PKTOOLS/pyjeo_introduction2.html)
* [Scaling-up: batch processing on the cluster with pyjeo](https://spatial-ecology.net/docs/build/html/PKTOOLS/pyjeo_upscaling_surf.html)

```
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/pyjeo_calculate_ndvi.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/pyjeo_calculate_ndvi.py
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/pyjeo_extract_parcels.sh
wget https://raw.githubusercontent.com/selvaje/SE_data/master/exercise/pyjeo_extract_parcels.py
```

* apptainer container at https://github.com/fpl/apptainer4pyjeo

### Wednesday: ML with HPC

* [Fundation model - Prithvi 100M model](https://spatial-ecology.net/docs/build/html/CASESTUDY/foundation_model_IIASA2024.html)

    wget https://raw.githubusercontent.com/selvaje/SE_docs/master/source/CASESTUDY/foundation_model_IIASA2024.py

* apptainer container at https://github.com/fpl/apptainer4conda 

Thursday: openEO

Friday: Pangeo 