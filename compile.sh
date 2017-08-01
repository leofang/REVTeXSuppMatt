#!/bin/bash

if [[ $# -ne 1 ]]
then
   echo "Usage: ./compile.sh filename.tex"
   exit 1
else
   BASE_NAME=`basename $1 .tex`
   #echo $BASE_NAME
   #texclear
   pdflatex $1
   #pdflatex $1
   bibtex $BASE_NAME.aux
   bibtex bu1.aux
   bibtex bu2.aux
   pdflatex $1 
   pdflatex $1 
fi
