#!/bin/bash

#
# $1 = document type
# $2 = name of document
#

if [[ "$#" -ne 2 ]]; then
  echo "Illegal number of arguments...Expected 2..."
  exit
fi

if [[ $1 == "post" ]]; then
  cp "_templates/POST.md" "_posts/$2"
else
  echo "Document type not recognized..."
fi