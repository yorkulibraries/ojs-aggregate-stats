#!/bin/bash

# Usage
#
# First set up these environment variables, either on the comamnd line
# or in your .bashrc.
#
# $ export OJS_ADMIN_USERNAME=admin
# $ export OJS_ADMIN_PASSWORD=secret
#
# Specify the month with -d:
#
# $ ./aggregate-ojs-download-stats.sh -d 201701 > ojs-downloads-201701.csv
#
# Use GNU date to get the previous month (good for cron jobs):
#
# $ PREV_MONTH=`date -d '1 month ago' "+%Y%m"`
# $ ./aggregate-ojs-download-stats.sh -d $PREV_MONTH > ojs-downloads-$PREV_MONTH.csv

# List of journal stats report URLs
#
# These are stored in a CSV file.
#
# It has to be organized like this (for York) because each part of the URL stored in the array has _slight_ differences
# (usually related to the journal number it was assigned in our previous installation). What this means is that I
# couldn't use one common URL with only the journal name changing. So whenever we need to add a journal to the code,
# just scroll to the bottom and follow the pattern with the next variable index.
#
# Note for URLs, we used to have a single OJS installation with many journals (which is why they all have a number). We
# have now moved to having a single OJS installation for every journal. I imagine that if you started with multiple OJS
# installations, you might actually have a uniform beginning URL.

JOURNAL_LIST="ojs-journals.csv"

# Knowing the full path to this script (and hence the list of journals) means it can be
# called from another directory.
JOURNAL_LIST_PATH=`dirname $0`
JOURNAL_LIST_PATH+="/${JOURNAL_LIST}"

# OJS admin username and password
#
# It's safest to set these up as environment variables,
# but if they're not there, ask for them.
if [[ -z "$OJS_ADMIN_USERNAME" ]]
then
    read -p "OJS admin username: " OJS_ADMIN_USERNAME
fi

if [[ -z "$OJS_ADMIN_PASSWORD" ]]
then
    read -p "OJS admin password: " OJS_ADMIN_PASSWORD
fi

# Handy function to echo to STDERR
echoerr() { echo "$@" 1>&2; }

# Month to get
YYYYMM=""
while getopts ":d:" opt; do
    case $opt in
	d)
	    YYYYMM=$OPTARG
	    ;;
	:)
	    echoerr "Option -$OPTARG requires an argument."
	    exit 1
	    ;;
    esac
done

if [[ -z "$YYYYMM" ]]
then
    echoerr "Please specify date with -d, e.g. -d 201701"
    exit 1
fi

# This variable is because the last part of the URL is uniform and just makes life easier to construct the URL with the
# 'start' ($url); 'middle' ($month); 'end' ($last). No idea if this would be different on a different server
# installation. Replace with whatever comes after the date range in the URL -- if uniform.
LAST="%22%3B%7D"

# We'll be collecting a number of files along the way.
TEMP=/tmp/ojs
mkdir -p $TEMP

# Remember the current internal field separator so we can reset it before exit
OLDIFS=$IFS
IFS=","

while read JOURNAL URL
do
    echoerr $JOURNAL
    # Log into each site (and set the cookie for the next command that retrieves the stats report).
    wget --quiet --post-data "username=${OJS_ADMIN_USERNAME}&password=${OJS_ADMIN_PASSWORD}&remember=1" --save-cookies $TEMP/ojs-cookie.txt --keep-session-cookies --no-check-certificate --delete-after https://${JOURNAL}.journals.yorku.ca/index.php/${JOURNAL}/login/signIn

    # echoerr "${URL}${YYYYMM}${last}"

    # Use that cookie to grab and download the stats report.
    wget --quiet --load-cookies $TEMP/ojs-cookie.txt --no-check-certificate ${URL}${YYYYMM}${LAST} -O $TEMP/$JOURNAL.csv

    if ! [ $? -eq 0 ]
       # wget returns 0 if "no problems occurred;" other codes mean network failure, server errors, etc.
    then
	echoerr "ERROR: wget could not download from $JOURNAL"
    fi
done < $JOURNAL_LIST_PATH

# Grab the last line of each CSV---the line with the data, if there is any---and collect it into one file.
echo "journal,month,downloads"
for I in $TEMP/*.csv
do
    name=$(basename $I .csv)
    data=$(tail -n 1 $I)
    echo "${name}${data}"
done

# Clean up after ourselves
rm -r $TEMP
IFS=$OLDIFS

# The MIT License (MIT)

# Copyright (c) 2015 nina de jesus

# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
# documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
# Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
