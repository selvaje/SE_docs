
# Manipulate GSIM files

The Global Streamflow Indices and Metadata Archive (GSIM) – 

[Part 1: The production of daily streamflow archive and metadata](https://www.earth-syst-sci-data.net/10/765/2018/)

[Part 2: Quality Control, Time-series Indices and Homogeneity Assessment](https://www.earth-syst-sci-data.net/10/787/2018/essd-10-787-2018.html)


**Download the GSIM archive**

    mkdir -p GSIM/zip
    cd  GSIM/zip
    wget https://store.pangaea.de/Publications/GudmundssonL-etal_2018/GSIM_indices.zip
    unzip GSIM_indices.zip
    cd GSIM_indices/TIMESERIES/monthly

## Data exploration

To return a fast results we only perform the operation on ./US_*.mon files

**Create x_y.txt file**

First count longitude and latitude information. 

    grep latitude  US*.mon  | awk '{ print $4 }'   | wc -l
    grep longitude US*.mon  | awk '{ print $4 }'   | wc -l
   
Now that we know that for longitude/latitude strings are not missing any entrance we can combine and create the x_y.txt

    paste -d " " <(grep longitude US*.mon | awk '{print $4}') <(grep latitude  US*.mon | awk '{print $4 }') > x_y.txt

**Count number of observations**

For the column "MEAN" count the overall number of observations and also the ones that reported NA

    paste -d " " <(awk -F , '{ if(NF>5) print $2}' US*.mon | grep -v date | wc -l )  <( awk -F , '{ if(NF>5) print $2}' US*.mon | grep -v date |  grep NA  | wc -l )

overall observation 2,053,753 ; observation with NA 556,197 

**Count how many observations per date**

List (and count) unique date observations

    awk -F , '{ if(NF>5) { if ($1 > 0) { print $1 }} }' ./US_*.mon | sort | uniq  -c > count_date.txt


**Monthly MEAN distribution**

Check if your data are normally distributed.

    awk -F , '{ if(NF>5) { if ($2 > 0  ) { print int($2) }} }'  ./US_*.mon | sort -g | uniq -c

The monthly MEAN is skewed to the left.