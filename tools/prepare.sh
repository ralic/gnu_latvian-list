#!/usr/bin/env dash

# Prepare Latvian List
#
clear
# Prepare Firefox list
perl sorter.pl ../latvian-list.txt
perl addChecksum.pl ../latvian-list.txt
#
# Prepare Opera list
#perl automagically_create_opera_filters.pl ../latvian-list.txt
perl sorter.pl ../urlfilter.ini
perl addChecksum_alt.pl ../urlfilter.ini
perl addChecksum.pl ../element-filter.css
#
# Prepare IE list
perl createTPL.pl ../latvian-list.txt
#
echo -n "Press enter to proceed:"
read xx