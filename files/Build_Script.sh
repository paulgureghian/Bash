#!/bin/bash
# shellcheck disable=SC2086

# Created by Paul A. Gureghian in May 2020. #
# This Bash shell script copies certain files from a source directory to a build directory. #

# Start script. #

# Welcome. #
echo "Welcome. Beginning build."

firstline=$(head -n 1 source/changelog.md)

read -a splitfirstline <<< $firstline

version=${splitfirstline[1]}
echo "You are building version number:" $version

# Get user input. #
echo 'Do you want to continue? (enter "1" for yes, "0" for no)'
read versioncontinue

# Check for 'yes' or 'no'. #
if [ $versioncontinue -eq 1 ]

then
  echo "OK"
  for filename in source/*
  do 
    echo $filename
  done    

else 
  echo "Please comeback when you are ready"

fi

# Check for a specific file. #
if [ "$filename" == "source/secretinfo.md" ]

then 
  echo "Not copying" $filename

else
  echo "Copying" $filename
  cp $filename build/.  

fi    

# List the files. #
cd build/ || exit
cd ..

echo "Build version $version contains:"
ls

# End of script. #