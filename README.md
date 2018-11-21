# Statistical modelling in R

Authors: [JJ Valletta](mailto:jj.valletta@exeter.ac.uk) and [TJ McKinley](mailto:T.McKinley@exeter.ac.uk)

To **build** the workshop notes:

`./_build.sh`

To **compile** the **slides**:

```
cd Slides/02-linear-models/
./compile.sh -a 1
```

and similarly for other folders in `Slides/`

To **publish** to `gh-pages` branch (after build, **make sure that all changes have been committed or stashed**):

```
git add -f _site
git commit -m "Added docs to repo"
git subtree split --prefix _site -b gh-pages
git push origin gh-pages --force
```

This next part removes the build from the `master` branch (**be very careful that commit `"Added docs to repo"` was successful**).

```
git checkout master
git reset --hard HEAD~1
git branch -D gh-pages
```
