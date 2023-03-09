# Rintro 2023
This repository contains the material for an introductory R-Course

# For participants
All lecture material can be found as r-markdown files in the rmd/ directory. You can load and explore those individually in your Rstudio session. 

The early parts of this series should work in any R environment.  
For the latter parts you will need to install required packages - as part of the learning curve.

# For lecturers:
To setup all required packages at once run the followin in the repo root:

    mamba env create -f conda_config.yml  
    conda activate Rintro2023
    Rscript -e "rmarkdown::render_site('rmd')" 

This will render the full web site under rmd/_site.

The same is available also here: https://maxplanck-ie.github.io/Rintro/
    


