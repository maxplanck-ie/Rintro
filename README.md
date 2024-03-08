# Rintro 2024

This repository contains material for our course: Introduction to R-language.

This branch can be downloaded as zip archive (using the `Code` button above) or cloned such:

```{bash}
git clone -b 2024.04 git@github.com:maxplanck-ie/Rintro.git
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
mamba env create -f configs/conda.yml  
conda activate Rintro

# dslabs cannot be conda installed
Rscript -e 'install.packages("dslabs", repos="https://cloud.r-project.org")'
```

To render all material into a full web site under `docs` run
```{bash}
quarto render qmd
```

The same is available also here: https://maxplanck-ie.github.io/Rintro/
    



