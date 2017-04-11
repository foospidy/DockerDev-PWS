# DockerDev-PWS
Docker build for Pivotal PWS dev.

This will create a Docker container that contains the basic tools need to interact with the Pivotal PWS Cloud Foundry platform (https://run.pivotal.io/).

## Instructions

To build the container image run: `make build`.

To run the container run: `make run`. By default this will mount the `$HOME/dev/Bluemix` directory on your Docker host, which should contain your Bluemix application project directories. From within the container this directory will be mapped to `/Bluemix`. If your Bluemix application project directories are in a different location you can specify that location by passing the PROJECT_DIR parameter to the `make run` command. Example: `make run PROJECT_DIR=/opt/myprojects`.  
