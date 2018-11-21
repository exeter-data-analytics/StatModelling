#!/bin/bash

# -a compiles slides and handout

while getopts :a: option
do
    case "${option}"
    in
        a) compileall=${OPTARG};;
        \?)
            echo "Invalid option: -$OPTARG"
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument."
            exit 1
            ;;
    esac
done

if [ ! -z ${compileall+x} ]; then
    if [ $compileall != "0" ] && [ $compileall != "1" ]; then
        echo "compileall set incorrectly (should be 0 or 1)"
        exit 1
    fi
else
    compileall="0"
fi

texfile="03-generalised-linear-models"

if [ $compileall == "1" ]; then
    compile="\def\handoutmode{1} \input{$texfile.tex}"
    pdflatex $compile
    #pdfannotextractor $texfile.pdf
    compile="\def\filename{$texfile.pdf} \input{handout.tex}"
    pdflatex $compile
    mv handout.pdf $texfile-handout.pdf
    rm handout.aux handout.log
fi

pdflatex $texfile.tex
rm $texfile.aux $texfile.log $texfile.nav 
rm $texfile.out $texfile.snm $texfile.toc 
rm $texfile.vrb

