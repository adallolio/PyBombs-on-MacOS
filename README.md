# PyBombs-on-MacOS

The method presented here has been tested on macOS High Sierra Version 10.13.5.

## Host Prerequisites
  * Install [XQuartz](https://www.xquartz.org/) and enable "Allow connections from network clients" under Preferences ->       Security.
  * Install [Docker for Mac](https://docs.docker.com/docker-for-mac/) and create your Docker account.

## Installation
  * Open a terminal and check Docker installation:
  ```
  docker run hello-world
  ```
  Docker will first try to find the image locally, then it will pull the image from Docker server.
  You can check the IMAGE_ID with:
  ```
  docker images
  ```
  As Docker works fine, remove the pulled image as it won't be needed:
  ```
  docker rmi -f IMAGE_ID
  ```
  * Login with your docker credentials:
  ```
  docker login
  ```
  * Navigate to the cloned repo and generate the environment variables:
  ```
  cd ~/PyBombs-on-MacOS
  source env.sh
  ```
  * Build the image:
  ```
  bash build.sh
  ```
  * Check and copy your local hostname in System Preferences -> Sharing -> Edit and add it:
  ```
  xhost + your-local-hostname
  ```
  * Run a container:
  ```
  docker run --rm -it -e DISPLAY=your-local-hostname:0 --privileged --name $BASE_NAME $BASE_CONTAINER bash
  ```
  * Now you're in the new environment, install pybombs and gnuradio:
  ```
  bash install.sh
  ```
  
  * Enjoy the new environment!
