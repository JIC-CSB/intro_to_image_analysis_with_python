
# Introduction to image analysis with Python

This tutorial provides several Jupyter notebooks that together provide an introduction to understanding image data with Python.

Running the notebooks requires:

1. Either installing Jupyter directly, or through Docker (see details below).
2. Getting the sample data file (again see below).

## Running the notebooks directly

Firstly install Jupyter. There are some instructions [here](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/).

To get the data file used in the examples, download from [Figshare](https://doi.org/10.6084/m9.figshare.3438743.v1) then unzip the file. You'll need to alter the path to the ``Hypocotyl.czi`` file within the Jupyter notebooks to wherever you put the file.

## Running the notebooks with Docker

You can also run Jupyter in a self contained environment called Docker. To do this:

1. Install [Docker](https://docs.docker.com/engine/installation/).
2. Run the build script ``build_docker_image.sh``
3. Run the docker image with ``docker run -d -p 8888:8888 dtp2017``
4. Open a web browser and point it at http://localhost:8888

