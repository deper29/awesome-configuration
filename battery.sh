#!/bin/bash
LINECOUNT="`/usr/bin/acpitool -b | wc -l`"
if [ $LINECOUNT -gt 1 ]
then
  /usr/bin/acpitool -b | grep -i "all batteries" | cut -d: -f2-
else
  /usr/bin/acpitool -b | cut -d: -f2-
fi
echo $LINECOUNT
