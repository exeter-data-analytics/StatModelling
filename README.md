# Statistical modelling in R

This provides a template for R practicals written using the `bookdown` package. The template provides some customised "Task" and "Solution" boxes. To see some examples on how to use this template, download or clone the repository and then compile the project:

**Linux / Mac:**

Run `./_build.sh` from the working directory.

**Windows:**

Run `_build.bat` from the working directory using the command line.

Depending on whether or not the `Rscript` executable is on the search path, you may have to edit the build files. For example, on my Windows machine I needed to amend `_build.bat` to:

```
"C:\Program Files\R\R-3.5.1\bin\Rscript.exe" -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
```

and so on. You may also have to install pandoc.

All necessary files are included in the `docs` folder which is made as part of the build. If you want to link the PDF document within the HTML gitbook document, then you need to compile the PDF first.

All files are compiled to a `docs` folder. After compilation, the file `index.html` contains examples on how to use the template.

