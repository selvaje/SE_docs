# Spatial Ecology course website


## Publishing requirements

### Permissions requirements:

+ Giuseppe needs to add you as a contributor to the repo

### Git account requirements - do this first!

+ Add SSH key to Git account, see [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) for details on how.

### Local working machine requirements

+ Enable Secure Shell Protocol (SSH)
+ Generate SSH key to add to Git profile, see [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for how.
+ Install [sshpass](https://ubuntu.pkgs.org/22.04/ubuntu-universe-arm64/sshpass_1.09-1_arm64.deb.html)
+ Install [Sphinx](https://www.sphinx-doc.org/en/master/usage/installation.html#linux) & the following Sphinx extensions
  + Install [sphinx-rtd-theme](https://ubuntu.pkgs.org/22.04/ubuntu-main-amd64/sphinx-rtd-theme-common_1.0.0+dfsg-1_all.deb.html)
  + [recommonmark](https://recommonmark.readthedocs.io/en/latest/)
  + 'jupyter_sphinx',
  + [nbsphinx](https://nbsphinx.readthedocs.io/en/0.2.15/installation.html)
  + 'sphinx.ext.mathjax'
+ Clone this repo
+ Add `make_push_deploy.sh` script - ask Giuseppe. This file is listed in `.gitignore` thus not in the repo  
