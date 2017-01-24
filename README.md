A collection of various helper scripts we use to interact with OJS.

# Scripts

## aggregate-ojs-download-stats.sh

York U's current [OJS](https://pkp.sfu.ca/ojs/) setup ([York Digital Journals](http://ydj.journals.yorku.ca/index.php/ydj)) is multiple installations of OJS (one for each journal). However, since we administer them as a whole, we wanted a way to automate and aggregate the download stats for each journal. That is what this script does.

Note that this script makes use of a URL created by the OJS Report generator. You can simply copy the pattern as presented in the code, but if you'd like to modify the code to aggregate different types of statistics, you can create your own URLs by using the OJS Report Generator in your own OJS install.

See [OJS Report Generator](https://docs.google.com/document/d/1EWbZXA_hIDJbB9F_XexepLKFVA1_xbiZu7EvUTcV1gc/edit?usp=sharing) for instructions on working with the generator.  And for added context, refer to the Report Generation section of [PKP Statistics Framework](http://pkp.sfu.ca/wiki/index.php?title=PKP_Statistics_Framework).

**Requirements:** This only needs a bash shell.

# Licensing

Because these scripts don't represent parts of a single program, each script contains the license for its use at the end of the script.
