#!/bin/sh

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
#Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

## copy nojekyll file and data
cp .nojekyll _site/ 
cp -r _data _site/
cp -r dataFiles.zip _site/
cp Slides/02-linear-models/*-handout.pdf _site/
cp Slides/03-generalised-linear-models/*-handout.pdf _site/
cp Slides/04-mixed-effects-models/*-handout.pdf _site/
cd _site
zip slides.zip *-handout.pdf
cd ..

