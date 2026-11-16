# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

import sphinx_rtd_theme
import jupyter_sphinx

project = "Spatial Ecology's code documentation"
copyright = '2020, Giuseppe Amatulli'
author = 'Giuseppe Amatulli'
release = '0.0.1'

extensions = [
    'myst_parser',
    'sphinx_rtd_theme',
    'jupyter_sphinx',
    'nbsphinx',
    'sphinx.ext.mathjax'
]

myst_enable_extensions = [
    "colon_fence",
    "deflist",
    "html_image",
]

templates_path = ['_templates']
exclude_patterns = [
    'VIRTUALMACHINE/Setting_OSGeoLive_curso_para_Ecologia_Espacial.md'
    'CASESTUDY/Perceptron_Intro.ipynb'
    'CASESTUDY/Tree_Height_03RF_pred.ipynb'
    'CASESTUDY/Tree_Height_04SVM_pred_2022.ipynb'
    'CASESTUDY/Tree_Height_04SVM_pred_2023.ipynb'
    'CASESTUDY/Tree_Height_04SVM_pred_2024.ipynb'
    'CASESTUDY/Tree_Height_05Perceptron_pred_clean_2022.ipynb'
    'CASESTUDY/Tree_Height_06Perceptron_complete_2024.ipynb'
    'CASESTUDY/Tree_Height_06Perceptron_pred_2023.ipynb'
    'GRASS/grass_osgeo.ipynb'
]

html_theme = 'sphinx_rtd_theme'
html_logo = './images/SE_compact.png'
html_static_path = ['_static']
html_css_files = ['css/custom.css']

nbsphinx_allow_errors = True
