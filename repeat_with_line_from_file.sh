#!/bin/bash
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
