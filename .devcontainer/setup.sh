#!/bin/bash

# Install Jupyter and related packages
echo "Installing Jupyter Notebook and JupyterLab..."
pip install --upgrade pip
pip install -r requirements.txt

# Install R packages for Jupyter kernel
echo "Installing R kernel for Jupyter (IRkernel)..."
R -e "install.packages('IRkernel', repos='https://cloud.r-project.org/')"
R -e "IRkernel::installspec(user = FALSE)"

# Install commonly used R packages for statistics
echo "Installing common R packages for statistics..."
R -e "install.packages(c('ggplot2', 'dplyr', 'tidyr', 'readr', 'tibble', 'stringr', 'forcats', 'purrr'), repos='https://cloud.r-project.org/')"

echo "Setup complete! You can now use Jupyter Notebook with R kernel."
echo "To start Jupyter Notebook, run: jupyter notebook"
echo "To start JupyterLab, run: jupyter lab"
