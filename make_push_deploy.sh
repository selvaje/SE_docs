#!/bin/bash

# ┌─────────────────────────────────────────────────────────────────┐
# │  SE_docs (LOCAL ONLY)                                           │
# │  • Build Sphinx locally: make html                              │
# │  • No GitHub Actions needed                                     │
# └─────────────────────────────────────────────────────────────────┘
#          │
#          │ Copy build/html → docs/build/html
#          ▼
# ┌─────────────────────────────────────────────────────────────────┐
# │  spatial-ecology.net (GITHUB BUILDS)                            │
# │  • Only jekyll.yml needed                                       │
# │  • Builds Jekyll + includes Sphinx docs on push                 │
# └─────────────────────────────────────────────────────────────────┘
#          │
#          ▼
# ┌─────────────────────────────────────────────────────────────────┐
# │  LIVE:                                                          │
# │  • https://spatial-ecology.net                                  │
# │  • https://spatial-ecology.net/docs/build/html/index.html       │
# └─────────────────────────────────────────────────────────────────┘

# Build Sphinx
cd /home/selv/SE_docs/SE_docs
make html

# cp sphinx html  output to spatial-ecology.net — include ALL files/dirs including _static
rm -r /home/selv/SE_docs/spatial-ecology.net/docs/build/html
cp -r  /home/selv/SE_docs/SE_docs/build/html   /home/selv/SE_docs/spatial-ecology.net/docs/build/html  

# Push SE_docs
cd /home/selv/SE_docs/SE_docs
git add --all
git commit -m "update sphinx docs"
git push

# Push spatial-ecology.net
cd /home/selv/SE_docs/spatial-ecology.net
git add --all 
git commit -m "sync sphinx docs from SE_docs"
git push

