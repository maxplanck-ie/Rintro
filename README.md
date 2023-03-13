# Rintro 2023

This repository contains material for our course: Introduction to R-language.

This branch can be downloaded as zip archive (using the `Code` button above) or cloned such:

```{bash}
git clone -b 2023.03 git@github.com:maxplanck-ie/Rintro.git
```

# For participants
All lecture material can be found as r-markdown files in the `rmd/` sub-directory. 
You can load and explore those individually in your Rstudio session. 

The early parts of this series should work in any R environment.  
For the latter parts you will need to install required packages - as part of the learning curve.

# For lecturers

Pre-requisites:
- Access to your laptop's terminal
- `conda`, with `mamba` installed in base environment

To setup all required packages run the following in the repo root:

```{bash}
mamba env create -f conda_config.yml  
conda activate Rintro2023
```

To render all material into a full web site under `rmd/_site` run
```{bash}
Rscript -e "rmarkdown::render_site('rmd')" 
```

The same is available also here: https://maxplanck-ie.github.io/Rintro/
    



