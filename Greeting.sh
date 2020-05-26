#!/bin/bash

# Created by Paul A. Gureghian in May 2020. #
# This Bash shell script prints a greeting to the console. #

# Start script. #

# Declare variables. #
first_greeting="Nice to meet you"
later_greeting="How are you"

greeting_occasion=0
greeting_limit=$1

# While loop. #
while [ $greeting_occasion -lt $greeting_limit ]

do
  
  if [ $greeting_occasion -lt 1 ]
  then
    echo $first_greeting

  else
    echo $later_greeting

  fi
  greeting_occasion=$((greeting_occasion + 1))

done

# End of script. #