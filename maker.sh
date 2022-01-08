#!/bin/bash

#
# $1 = document type
# $2 = name of document
#

if [[ "$#" -ne 2 ]]; then
  echo "Illegal number of arguments...Expected 2..."
  exit
fi

DATE=$(date --iso-8601=date)

if [[ $1 == "post" ]]; then
  cp "_templates/POST.md" "_posts/$DATE-$2.md"
else
  echo "Document type not recognized..."
fi