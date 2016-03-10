#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Please provide a Git URL and a site name."
  exit
fi

GIT_URL=$1
SITE_DIR=$2
PROFILE_DIR="profile"

if [ -d "$PROFILE_DIR" ]; then
  echo "Please remove the directory named $PROFILE_DIR."
  exit
fi

if [ -d "$SITE_DIR" ]; then
  echo "Please remove the directory named $SITE_DIR."
  exit
fi

git clone $GIT_URL $PROFILE_DIR

MAKE_FILE=`find ./$PROFILE_DIR -type f -name "*.make" -maxdepth 1`
INFO_FILE=`find ./$PROFILE_DIR -type f -name "*.info" -maxdepth 1`

if [ -z "$MAKE_FILE" ]; then
  echo "No makefile found."
  exit;
fi

if [ -z "$INFO_FILE" ]; then
  echo "No info file found."
  exit;
fi

drush make --prepare-install $MAKE_FILE ./$SITE_DIR -y

rm -rf ./$PROFILE_DIR

PROFILE_NAME=`basename $INFO_FILE .info`
cd ./$SITE_DIR/profiles/$PROFILE_NAME
git init
git remote add origin $GIT_URL
git fetch
git branch master origin/master
git checkout -f
