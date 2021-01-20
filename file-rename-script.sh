#!/bin/bash

PREFIX='AWS_'
EXT='pdf'


find . -type f -name "${PREFIX}*.${EXT}" | while read FILE ; do
    NEWFILE="$(echo ${FILE} |sed -e 's/AWS_Certified_Developer_Official_Study_Guide_Assoc..._----_(//')";
    #echo ${NEWFILE};
    mv "${FILE}" "${NEWFILE}";
done 

for FILE in *.${EXT}
do
  #echo "${FILE}"
  NEWFILE="${FILE%?.${EXT}}"
  #echo "${NEWFILE}"
  mv "${FILE}" "${NEWFILE}".${EXT}
done