#!/bin/bash
#substitute all lines without ids with these ids
for date in `cat ids`
do
  #find next occurance
   line=$(grep -n -m 1 '<column name="date_pattern" value=""/>' generated.xml | cut -f1 -d ':')
   #remove line
   sed -i "${line}d" generated.xml
   #insert the same but with next value from file
   sed -i "$((line - 1)) a <column name=\"date_pattern\" value=\"${date}\"/>" generated.xml
done
