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
]

html_theme = 'sphinx_rtd_theme'
html_logo = './images/SE_compact.png'
html_static_path = []

nbsphinx_allow_errors = True
