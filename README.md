# Rintro 2023

This repository contains material for our course: Introduction to R-language.

# For participants
All lecture material can be found as r-markdown files in the 'rmd/' sub-directory. 
You can load and explore those individually in your Rstudio session. 

The early parts of this series should work in any R environment.  
For the latter parts you will need to install required packages - as part of the learning curve.

# For lecturers

Pre-requisites:
- Access to your laptop's terminal
- `conda`, with `mamba` installed in base environment

To setup all required packages at once run the following in the repo root:

```{bash}
    mamba env create -f conda_config.yml  
    conda activate Rintro2023
    Rscript -e "rmarkdown::render_site('rmd')" 
```

This will render the full web site under rmd/_site.

The same is available also here: https://maxplanck-ie.github.io/Rintro/
    



