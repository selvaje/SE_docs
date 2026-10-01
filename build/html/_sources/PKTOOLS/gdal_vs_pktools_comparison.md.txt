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
| Dataset info | `gdal raster info` / `gdalinfo` | `pkinfo` | pkinfo prints only the items you request, in a form other pktools commands can take through shell substitution. gdalinfo prints everything at once. |
| Pixel value at a location | `gdal raster pixel-info` / `gdallocationinfo` | `pkinfo` (`-r -x -y`) | Same result. pkinfo can also print the filename of images that cover a coordinate (`-cover`). |
| Crop, band selection | `gdal raster clip`, `select` / `gdal_translate` | `pkcrop` | pkcrop crops by corners, by centre plus size, or by a vector extent. It also selects and reorders bands. |
| Stack bands | `gdal raster stack` / `gdalbuildvrt -separate` | `pkcrop` (several `-i`) | Both do it. GDAL can write a virtual (VRT) result. |
| Mosaic | `gdal raster mosaic` / `gdal_merge`, `gdalbuildvrt` | `pkcomposite` | Mosaicking is common. The compositing rules are pktools-only (see 1B). |
| Change resolution / resample | `gdal raster resize`, `gdalwarp` | `pkcrop`, `pkcomposite` (`-dx -dy -r`) | pkcrop lists only nearest-neighbour and bilinear. GDAL's resampling options are broader. |
| Data type change | `gdal raster set-type` / `gdal_translate -ot` | `-ot` on nearly every pk tool | Both do it. |
| Rescale values | `gdal raster scale`, `unscale` / `gdal_translate -scale` | `pkcrop` (`-scale`, `-off`, `-autoscale`) | Both do it. |
| Assign or override CRS | `gdal raster edit` / `gdal_edit` | `-a_srs` on `pkcrop`, `pklas2img`, `pkkalman` | pktools can only override the CRS, not reproject. |
| Output format | `gdal raster convert` / `gdal_translate` | `-of` on most pk tools | pktools has no separate conversion command. |
| Compare two rasters | `gdal raster compare` / `gdalcompare` | `pkdiff` | pkdiff does a pixel-by-pixel comparison and can write a map of equal, greater and smaller. |
| Fill nodata holes | `gdal raster fill-nodata` / `gdal_fillnodata` | `pkfillnodata` | Same approach: a search distance and smoothing passes. pkfillnodata takes a mask raster where 0 marks pixels to fill. |
| Raster to polygons | `gdal raster polygonize` / `gdal_polygonize` | `pkpolygonize` | Both support a mask band. |
| Sieve small clumps | `gdal raster sieve` / `gdal_sieve` | `pksieve` | Both support 4- or 8-connectivity. pksieve merges small objects into the largest neighbour. |
| Reclassify pixel values | `gdal raster reclassify` (classic GDAL: `gdal_calc`) | `pkreclass` | pkreclass takes from/to lists or a two-column recode file. |
| Masks | `gdal raster calc` / `gdal_calc`, `gdal raster nodata-to-alpha` | `pkgetmask`, `pksetmask` | GDAL does it through general raster algebra. pktools has dedicated tools. pksetmask uses `<`, `=`, `>` and `!` operators and can apply several masks. |
| Colour tables | `gdalattachpct`, `pct2rgb`, `rgb2pct`, `gdal raster rgb-to-palette` | `pkcreatect` | pkcreatect attaches an ASCII table or a min–max ramp, supports greyscale, writes a PNG legend, and can remove a table. |
| Neighbourhood filters | `gdal raster neighbors` | `pkfilter` | Overlap: window mean, sum, min, max, stdev, median, mode, and edge-detection kernels. GDAL has custom convolution matrices, gaussian, sharpen and unsharp-masking. pktools goes beyond this (see 1B). |
| Raster to text | `gdal2xyz` | `pkdumpimg` | pkdumpimg writes a matrix or `x y z` lines. |
| Text to raster | XYZ driver, `gdal_grid` | `pkascii2img` † | Via drivers in GDAL, a dedicated tool in pktools. |
| Statistics at samples or zones | `gdal raster zonal-stats`, `as-features` | `pkextractimg`, `pkextractogr` | GDAL zonal-stats is the richer one, with a weighting raster, fractional pixel coverage and about 20 statistics. pktools is built for training-sample extraction (see 1B). |
| Raster statistics | `gdal raster info` (stats) | `pkstat` | pkstat computes mean, median, variance, skewness, kurtosis, histograms and KDE, correlation, RMSE and regression between two rasters. |
| Terrain-related | `gdal raster hillshade`, `slope`, `aspect`, `roughness`, `tpi`, `tri` / `gdaldem` | `pkfilterdem`, `pkdsm2shadow` | Related, not equivalent. pktools filters DEMs and computes cast shadows. GDAL derives terrain indices. |

### 1B. Raster: unique to pktools

| Tool | What it does |
|---|---|
| `pkcomposite` (compositing) | Resolves overlapping pixels by rule: overwrite, maxndvi, maxband, minband, mean, stdev, median, mode, sum, minallbands, maxallbands. Its own page says GDAL does not support a composite step. |
| `pkfilter` (beyond the common part) | Morphological dilate, erode, open and close. Sobel edge detection, Markov random field, discrete wavelets, Savitzky-Golay, percentile, circular kernels, user filter taps, and filtering along the band (spectral or temporal) axis. This includes spectral response functions and nodata interpolation over time. |
| `pkstatprofile` | Per-pixel statistics along a temporal or spectral profile (mean, median, var, min, max, mode, percentile, proportion, count of valid observations). |
| `pkkalman` | Kalman-filter data assimilation: fills gaps in a fine-resolution time series using a coarse-resolution model series. |
| `pklas2img` | Rasterizes LAS/LAZ point clouds (height, intensity, scan angle, return number), with per-cell rules, return and class filters, and a percentile height profile. |
| `pkfilterdem` | Progressive morphological filter to derive a terrain model from a surface model. |
| `pkdsm2shadow` | Binary sun-shadow mask from a surface model and sun zenith and azimuth angles. |
| `pkdiff` (accuracy mode) | Validates a classified raster against reference points and prints a confusion matrix. |
| `pkextractimg`, `pkextractogr` (sampling) | Training-sample extraction with random or grid sampling, per-class thresholds, and polygon rules such as mean, mode, proportion, count and percentile. |
| `pkann`, `pksvm` †, `pkoptsvm` †, `pkfsann` †, `pkfssvm` †, `pkregann` † | Neural-network and SVM classification, parameter optimisation, feature selection, and neural-network regression. `pkann` was read in full: it is built on the FANN library, supports cross-validation and bagging, and takes training samples from a vector file. |
| `pkegcs` † | Utility for rasters in the European Grid Coordinate System. |

### 1C. Raster: unique to GDAL

| Family | Commands |
|---|---|
| Reprojection and georeferencing | `gdal raster reproject`, `gdalwarp`, `gdalmove`, `gdaltransform`, `gdalsrsinfo` |
| Create and edit | `gdal raster create`, `gdal_create`, `gdal raster update` |
| Overviews | `gdal raster overview add / delete / refresh`, `gdaladdo` |
| Tiling | `gdal raster tile`, `gdal2tiles`, `gdal_retile` |
| Indexing, virtual datasets | `gdal raster index`, `gdaltindex`, `gdal driver gti create`, `gdalbuildvrt`, `gdal raster materialize` |
| Terrain and visibility | `gdal raster viewshed`, `gdal_viewshed`, `gdaldem` |
| Distance and extent | `gdal raster proximity`, `gdal_proximity`, `gdal raster footprint`, `gdal_footprint` |
| Image fusion and display | `gdal raster pansharpen`, `gdal_pansharpen`, `gdal raster blend`, `color-map`, `gdalenhance` |
| Border cleaning | `gdal raster clean-collar`, `nearblack` |
| Raster algebra | `gdal raster calc`, `gdal_calc` |
| Vector and raster crossing | `gdal vector rasterize`, `gdal_rasterize`, `gdal vector grid`, `gdal_grid`, `gdal raster contour`, `gdal_contour` |
| Pipelines | `gdal pipeline`, `gdal raster pipeline` (with `read` and `write`), `gdal external`, `.gdalg` files |
| Multidimensional data | `gdal mdim info / convert / mosaic`, `gdalmdiminfo`, `gdalmdimtranslate` |
| File and system management | `gdal dataset *`, `gdal vsi *`, `gdalmanage`, `gdal-config`, `sozip`, and driver tools (COG, GPKG, OpenFileGDB, Parquet, PDF) |

---

## Part 2: Vector

pktools has only seven vector-oriented tools. GDAL has about 48 `gdal vector` commands plus the `ogr*` programs.

### 2A. Vector: in common

| Operation | GDAL | pktools | How they differ |
|---|---|---|---|
| Dump vector to text | `gdal vector info`, `convert` (CSV), `ogrinfo`, `ogr2ogr` | `pkdumpogr` | pkdumpogr dumps all or selected attributes, optionally with x and y, and can transpose the output. |
| Text to vector | `gdal vector make-point` plus the CSV/VRT drivers, `ogr2ogr` | `pkascii2ogr` | pkascii2ogr makes points or a single polygon from text columns. Its own page says virtual vector datasets are a better alternative. |
| Recode attribute values | `gdal vector sql`, `ogr2ogr -sql` | `pkreclassogr` | pktools has a dedicated from/to recode. GDAL does it through SQL. |
| Attribute statistics | `gdal vector sql` (aggregate SQL) | `pkstatogr` | pkstatogr gives min, max, mean, median, stdev, histogram and KDE for a field. GDAL has no dedicated command. |
| Raster values at features | `gdal raster zonal-stats`, `gdal raster pixel-info` | `pkextractogr` | See 1A. |
| Raster to vector | `gdal raster polygonize` | `pkpolygonize` | See 1A. |

### 2B. Vector: unique to pktools

| Tool | What it does |
|---|---|
| `pkannogr` †, `pksvmogr` † | Classify features in a vector dataset using a neural network or an SVM. |
| `pkdiff` (vector reference) | Accuracy assessment of a raster map against reference points. |

### 2C. Vector: unique to GDAL

| Family | Commands |
|---|---|
| Info, convert, create | `gdal vector info`, `convert`, `create`, `edit`, `export-schema`, `ogrinfo`, `ogr2ogr` |
| Geometry processing | `gdal vector buffer`, `concave-hull`, `convex-hull`, `simplify`, `simplify-coverage`, `segmentize`, `swap-xy`, `combine`, `explode-collections` |
| Validity and topology | `gdal vector check-geometry`, `make-valid`, `check-coverage`, `clean-coverage` |
| Overlay and clip | `gdal vector clip`, `layer-algebra`, `dissolve`, `ogr_layer_algebra` |
| Reproject | `gdal vector reproject` |
| Fields and layers | `gdal vector select`, `filter`, `sort`, `sql`, `set-field-type`, `set-geom-type`, `rename-layer` |
| Combine and update | `gdal vector concat`, `update`, `partition`, `ogrmerge` |
| Indexing | `gdal vector index`, `ogrtindex`, `gdal vector materialize` |
| Pipelines | `gdal vector pipeline` (with `read` and `write`) |
| Linear referencing and networks | `ogrlineref`, `gnmmanage`, `gnmanalyse` |

---

## Summary

- **Raster:** about 23 operations overlap. Most are straightforward equivalents (info, crop, fill, polygonize, sieve, reclassify, compare). The mosaic, filtering, statistics and extraction rows overlap only in part.
- **pktools-only raster work:** compositing rules, spectral and temporal filtering, Kalman assimilation, LAS rasterization, DEM and shadow tools, accuracy assessment, and machine-learning classification.
- **GDAL-only raster work:** reprojection, tiling, overviews, terrain derivatives, pansharpening, pipelines, multidimensional data, and file management.
- **Vector:** pktools covers a small attribute- and sample-oriented subset. Everything about geometry, topology, reprojection, merging and SQL is GDAL-only, and the only pktools-only vector work is classification and accuracy assessment.
