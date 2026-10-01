# GDAL vs pktools: command comparison

Comparison of the commands in the GDAL programs index (<https://gdal.org/en/stable/programs/index.html>) and the pktools available tools (<https://pktools.nongnu.org/html/md_apps.html>). Raster first, then vector.

## What was read

- **pktools:** the full apps page, and the man page for 26 of the 37 tools. These cover the raster tools, the vector tools, `pkann`, and `pkcomposite` (via its pktools page).
- **GDAL:** the full programs index, with the description of every command, plus the full sub pages for `gdal raster neighbors` and `gdal raster zonal-stats`.
- **Not opened:** the other GDAL sub pages, and the pktools pages for `pkannogr`, `pksvm`, `pksvmogr`, `pkoptsvm`, `pkfsann`, `pkfssvm`, `pkregann`, `pkascii2img`, `pkegcs`, `pkfilterascii` and `pkstatascii`. For these, the one-line descriptions from the index pages are used. Cells based only on that are marked †.

Notes:

- The new `gdal <command>` interface (GDAL 3.11+) is provisional. Both the new and the traditional command names are given.
- `gdal raster neighbors` and `gdal raster zonal-stats` were added in GDAL 3.12.
- pktools support is now limited, and the author recommends the Python library pyjeo instead.

---

## Part 1: Raster

### 1A. Operations in common

| Operation | GDAL (new CLI / traditional) | pktools | How they differ |
|---|---|---|---|
| Dataset info | `gdal raster info` / `gdalinfo` | `pkinfo` | pkinfo prints only the items you request,<br>in a form other pktools commands can take<br>through shell substitution. gdalinfo<br>prints everything at once. |
| Pixel value at a<br>location | `gdal raster pixel-info` /<br>`gdallocationinfo` | `pkinfo` (`-r -x -y`) | Same result. pkinfo can also print the<br>filename of images that cover a coordinate<br>(`-cover`). |
| Crop, band selection | `gdal raster clip`, `select` /<br>`gdal_translate` | `pkcrop` | pkcrop crops by corners, by centre plus<br>size, or by a vector extent. It also<br>selects and reorders bands. |
| Stack bands | `gdal raster stack` /<br>`gdalbuildvrt -separate` | `pkcrop` (several `-i`) | Both do it. GDAL can write a virtual (VRT)<br>result. |
| Mosaic | `gdal raster mosaic` /<br>`gdal_merge`, `gdalbuildvrt` | `pkcomposite` | Mosaicking is common. The compositing<br>rules are pktools-only (see 1B). |
| Change resolution /<br>resample | `gdal raster resize`, `gdalwarp` | `pkcrop`, `pkcomposite`<br>(`-dx -dy -r`) | pkcrop lists only nearest-neighbour and<br>bilinear. GDAL's resampling options are<br>broader. |
| Data type change | `gdal raster set-type` /<br>`gdal_translate -ot` | `-ot` on nearly every pk<br>tool | Both do it. |
| Rescale values | `gdal raster scale`, `unscale` /<br>`gdal_translate -scale` | `pkcrop` (`-scale`, `-off`,<br>`-autoscale`) | Both do it. |
| Assign or override<br>CRS | `gdal raster edit` / `gdal_edit` | `-a_srs` on `pkcrop`,<br>`pklas2img`, `pkkalman` | pktools can only override the CRS, not<br>reproject. |
| Output format | `gdal raster convert` /<br>`gdal_translate` | `-of` on most pk tools | pktools has no separate conversion<br>command. |
| Compare two rasters | `gdal raster compare` /<br>`gdalcompare` | `pkdiff` | pkdiff does a pixel-by-pixel comparison<br>and can write a map of equal, greater and<br>smaller. |
| Fill nodata holes | `gdal raster fill-nodata` /<br>`gdal_fillnodata` | `pkfillnodata` | Same approach: a search distance and<br>smoothing passes. pkfillnodata takes a<br>mask raster where 0 marks pixels to fill. |
| Raster to polygons | `gdal raster polygonize` /<br>`gdal_polygonize` | `pkpolygonize` | Both support a mask band. |
| Sieve small clumps | `gdal raster sieve` /<br>`gdal_sieve` | `pksieve` | Both support 4- or 8-connectivity. pksieve<br>merges small objects into the largest<br>neighbour. |
| Reclassify pixel<br>values | `gdal raster reclassify`<br>(classic GDAL: `gdal_calc`) | `pkreclass` | pkreclass takes from/to lists or a<br>two-column recode file. |
| Masks | `gdal raster calc` /<br>`gdal_calc`,<br>`gdal raster nodata-to-alpha` | `pkgetmask`, `pksetmask` | GDAL does it through general raster<br>algebra. pktools has dedicated tools.<br>pksetmask uses `<`, `=`, `>` and `!` operators and<br>can apply several masks. |
| Colour tables | `gdalattachpct`, `pct2rgb`,<br>`rgb2pct`,<br>`gdal raster rgb-to-palette` | `pkcreatect` | pkcreatect attaches an ASCII table or a<br>min–max ramp, supports greyscale, writes a<br>PNG legend, and can remove a table. |
| Neighbourhood<br>filters | `gdal raster neighbors` | `pkfilter` | Overlap: window mean, sum, min, max,<br>stdev, median, mode, and edge-detection<br>kernels. GDAL has custom convolution<br>matrices, gaussian, sharpen and<br>unsharp-masking. pktools goes beyond this<br>(see 1B). |
| Raster to text | `gdal2xyz` | `pkdumpimg` | pkdumpimg writes a matrix or `x y z` lines. |
| Text to raster | XYZ driver, `gdal_grid` | `pkascii2img` † | Via drivers in GDAL, a dedicated tool in<br>pktools. |
| Statistics at<br>samples or zones | `gdal raster zonal-stats`,<br>`as-features` | `pkextractimg`,<br>`pkextractogr` | GDAL zonal-stats is the richer one, with a<br>weighting raster, fractional pixel<br>coverage and about 20 statistics. pktools<br>is built for training-sample extraction<br>(see 1B). |
| Raster statistics | `gdal raster info` (stats) | `pkstat` | pkstat computes mean, median, variance,<br>skewness, kurtosis, histograms and KDE,<br>correlation, RMSE and regression between<br>two rasters. |
| Terrain-related | `gdal raster hillshade`,<br>`slope`, `aspect`, `roughness`,<br>`tpi`, `tri` / `gdaldem` | `pkfilterdem`,<br>`pkdsm2shadow` | Related, not equivalent. pktools filters<br>DEMs and computes cast shadows. GDAL<br>derives terrain indices. |

### 1B. Raster: unique to pktools

| Tool | What it does |
|---|---|
| `pkcomposite` (compositing) | Resolves overlapping pixels by rule: overwrite, maxndvi,<br>maxband, minband, mean, stdev, median, mode, sum, minallbands,<br>maxallbands. Its own page says GDAL does not support a<br>composite step. |
| `pkfilter` (beyond the common<br>part) | Morphological dilate, erode, open and close. Sobel edge<br>detection, Markov random field, discrete wavelets,<br>Savitzky-Golay, percentile, circular kernels, user filter<br>taps, and filtering along the band (spectral or temporal)<br>axis. This includes spectral response functions and nodata<br>interpolation over time. |
| `pkstatprofile` | Per-pixel statistics along a temporal or spectral profile<br>(mean, median, var, min, max, mode, percentile, proportion,<br>count of valid observations). |
| `pkkalman` | Kalman-filter data assimilation: fills gaps in a<br>fine-resolution time series using a coarse-resolution model<br>series. |
| `pklas2img` | Rasterizes LAS/LAZ point clouds (height, intensity, scan<br>angle, return number), with per-cell rules, return and class<br>filters, and a percentile height profile. |
| `pkfilterdem` | Progressive morphological filter to derive a terrain model<br>from a surface model. |
| `pkdsm2shadow` | Binary sun-shadow mask from a surface model and sun zenith and<br>azimuth angles. |
| `pkdiff` (accuracy mode) | Validates a classified raster against reference points and<br>prints a confusion matrix. |
| `pkextractimg`, `pkextractogr`<br>(sampling) | Training-sample extraction with random or grid sampling,<br>per-class thresholds, and polygon rules such as mean, mode,<br>proportion, count and percentile. |
| `pkann`, `pksvm` †, `pkoptsvm` †,<br>`pkfsann` †, `pkfssvm` †, `pkregann`<br>† | Neural-network and SVM classification, parameter optimisation,<br>feature selection, and neural-network regression. `pkann` was<br>read in full: it is built on the FANN library, supports<br>cross-validation and bagging, and takes training samples from<br>a vector file. |
| `pkegcs` † | Utility for rasters in the European Grid Coordinate System. |

### 1C. Raster: unique to GDAL

| Family | Commands |
|---|---|
| Reprojection and<br>georeferencing | `gdal raster reproject`, `gdalwarp`, `gdalmove`, `gdaltransform`,<br>`gdalsrsinfo` |
| Create and edit | `gdal raster create`, `gdal_create`, `gdal raster update` |
| Overviews | `gdal raster overview add / delete / refresh`, `gdaladdo` |
| Tiling | `gdal raster tile`, `gdal2tiles`, `gdal_retile` |
| Indexing, virtual datasets | `gdal raster index`, `gdaltindex`, `gdal driver gti create`,<br>`gdalbuildvrt`, `gdal raster materialize` |
| Terrain and visibility | `gdal raster viewshed`, `gdal_viewshed`, `gdaldem` |
| Distance and extent | `gdal raster proximity`, `gdal_proximity`, `gdal raster footprint`,<br>`gdal_footprint` |
| Image fusion and display | `gdal raster pansharpen`, `gdal_pansharpen`, `gdal raster blend`,<br>`color-map`, `gdalenhance` |
| Border cleaning | `gdal raster clean-collar`, `nearblack` |
| Raster algebra | `gdal raster calc`, `gdal_calc` |
| Vector and raster crossing | `gdal vector rasterize`, `gdal_rasterize`, `gdal vector grid`,<br>`gdal_grid`, `gdal raster contour`, `gdal_contour` |
| Pipelines | `gdal pipeline`, `gdal raster pipeline` (with `read` and `write`),<br>`gdal external`, `.gdalg` files |
| Multidimensional data | `gdal mdim info / convert / mosaic`, `gdalmdiminfo`,<br>`gdalmdimtranslate` |
| File and system management | `gdal dataset *`, `gdal vsi *`, `gdalmanage`, `gdal-config`, `sozip`,<br>and driver tools (COG, GPKG, OpenFileGDB, Parquet, PDF) |

---

## Part 2: Vector

pktools has only seven vector-oriented tools. GDAL has about 48 `gdal vector` commands plus the `ogr*` programs.

### 2A. Vector: in common

| Operation | GDAL | pktools | How they differ |
|---|---|---|---|
| Dump vector to text | `gdal vector info`, `convert`<br>(CSV), `ogrinfo`, `ogr2ogr` | `pkdumpogr` | pkdumpogr dumps all or selected<br>attributes, optionally with x and y, and<br>can transpose the output. |
| Text to vector | `gdal vector make-point` plus<br>the CSV/VRT drivers, `ogr2ogr` | `pkascii2ogr` | pkascii2ogr makes points or a single<br>polygon from text columns. Its own page<br>says virtual vector datasets are a better<br>alternative. |
| Recode attribute<br>values | `gdal vector sql`,<br>`ogr2ogr -sql` | `pkreclassogr` | pktools has a dedicated from/to recode.<br>GDAL does it through SQL. |
| Attribute statistics | `gdal vector sql` (aggregate<br>SQL) | `pkstatogr` | pkstatogr gives min, max, mean, median,<br>stdev, histogram and KDE for a field. GDAL<br>has no dedicated command. |
| Raster values at<br>features | `gdal raster zonal-stats`,<br>`gdal raster pixel-info` | `pkextractogr` | See 1A. |
| Raster to vector | `gdal raster polygonize` | `pkpolygonize` | See 1A. |

### 2B. Vector: unique to pktools

| Tool | What it does |
|---|---|
| `pkannogr` †, `pksvmogr` † | Classify features in a vector dataset using a neural network<br>or an SVM. |
| `pkdiff` (vector reference) | Accuracy assessment of a raster map against reference points. |

### 2C. Vector: unique to GDAL

| Family | Commands |
|---|---|
| Info, convert, create | `gdal vector info`, `convert`, `create`, `edit`, `export-schema`,<br>`ogrinfo`, `ogr2ogr` |
| Geometry processing | `gdal vector buffer`, `concave-hull`, `convex-hull`, `simplify`,<br>`simplify-coverage`, `segmentize`, `swap-xy`, `combine`,<br>`explode-collections` |
| Validity and topology | `gdal vector check-geometry`, `make-valid`, `check-coverage`,<br>`clean-coverage` |
| Overlay and clip | `gdal vector clip`, `layer-algebra`, `dissolve`, `ogr_layer_algebra` |
| Reproject | `gdal vector reproject` |
| Fields and layers | `gdal vector select`, `filter`, `sort`, `sql`, `set-field-type`,<br>`set-geom-type`, `rename-layer` |
| Combine and update | `gdal vector concat`, `update`, `partition`, `ogrmerge` |
| Indexing | `gdal vector index`, `ogrtindex`, `gdal vector materialize` |
| Pipelines | `gdal vector pipeline` (with `read` and `write`) |
| Linear referencing and<br>networks | `ogrlineref`, `gnmmanage`, `gnmanalyse` |

---

## Summary

- **Raster:** about 23 operations overlap. Most are straightforward equivalents (info, crop, fill, polygonize, sieve, reclassify, compare). The mosaic, filtering, statistics and extraction rows overlap only in part.
- **pktools-only raster work:** compositing rules, spectral and temporal filtering, Kalman assimilation, LAS rasterization, DEM and shadow tools, accuracy assessment, and machine-learning classification.
- **GDAL-only raster work:** reprojection, tiling, overviews, terrain derivatives, pansharpening, pipelines, multidimensional data, and file management.
- **Vector:** pktools covers a small attribute- and sample-oriented subset. Everything about geometry, topology, reprojection, merging and SQL is GDAL-only, and the only pktools-only vector work is classification and accuracy assessment.
