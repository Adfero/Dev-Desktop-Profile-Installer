# Dev Desktop Utilities
Checks out a Drupal profile from a Git URL and builds a site base on its makefile.

## Installation

The easiest way to install this is to simply run the following:

`curl https://raw.githubusercontent.com/Adfero/Dev-Desktop-Utilities/master/install.sh | bash`

## Usage

This command checks out a Drupal profile project from a Git repo, looks for a makefile, and builds out a new site based on that profile and makefile. It then initializes the profiles/<profile name> directory as a Git project. Below is an example of how to run the command:

`makedrupalsite <GIT URL> <SITE DIRECTORY NAME>`

* **<GIT URL>** is any URL to a Git project using SSH or HTTPS
* **<SITE DIRECTORY NAME>** is the name of the folder you want to use for your site. This command creates that folder for you. It must not exist prior to running the command.
