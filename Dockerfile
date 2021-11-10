# This docker image is desired for following project
# https://github.com/jomjol/neural-network-digital-counter-readout

# Choose your desired base image
FROM jupyter/minimal-notebook:latest
LABEL author="Veit Droege"

# any additional pip installs can be added by uncommenting the following line
#RUN pip install scipy pandas scikit-learn numpy matplotlib plotly
RUN pip install scikit-learn matplotlib numpy tensorflow

# Just use keras as part of tensorflow
RUN pip uninstall -y keras

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

