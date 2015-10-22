A collection of various helper scripts we use to interact with OJS.

##Description of scripts

###aggregate-ojs-download-stats.sh

YorkU's current OJS setup is multiple installations of OJS (one for each journal). However, since we administer them as a whole, we wanted a way to automate and aggregate the download stats for each journal. That is what this script does.

Note that you will need to generate a URL via the OJS Report generator for each journal that you'd like to harvest.
See this document for instructions on how to set this up: https://docs.google.com/document/d/1EWbZXA_hIDJbB9F_XexepLKFVA1_xbiZu7EvUTcV1gc/edit?usp=sharing

**Requirements:** This only needs a bash shell (any version which supports arrays).

##Licensing

Because these scripts don't represent parts of a single program, each script contains the license for its use at the end of the script. 
