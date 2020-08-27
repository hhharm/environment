#!/bin/bash
#######################################################################

#Replace string in all files (-R)

#-i = inplace
#-g = globally (every occurance)

find <directory> -type f -name '<file extention, e.g. *.less>'| while read -r F
do
  cat $F | grep <search string> && sed -i 's/<search string>/<replace string>/g' $F
done

#######################################################################

#substitute all lines without ids with these ids. Used this for liquibase I guess
for date in `cat ids`
do
  #find next occurance
   line=$(grep -n -m 1 '<column name="date_pattern" value=""/>' generated.xml | cut -f1 -d ':')
   #remove line
   sed -i "${line}d" generated.xml
   #insert the same but with next value from file
   sed -i "$((line - 1)) a <column name=\"date_pattern\" value=\"${date}\"/>" generated.xml
done

#######################################################################

#Create file "generated.xml" and repeat some text with next line from file with some list,
#e.g. with list of ids (can be generated there https://www.guidgenerator.com/online-guid-generator.aspx)
rm -f generated.xml
touch generated.xml
for id in `cat ids`
do
   echo "<insert tableName=\"table\">
            <column name=\"id\" value=\"${id}\"/>" >> generated.xml;
   echo '   <column name="example" value=""/>
        </insert>
' >> generated.xml
done
