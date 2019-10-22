# travis

* [Travis CI: ![Build Status](https://travis-ci.org/snw35/travis.svg?branch=master)](https://travis-ci.org/snw35/travis)
* [Dockerhub: snw35/travis](https://hub.docker.com/r/snw35/travis)

Travis CLI Container, updated weekly.

## How To Use

The `traviscli` helper script is provided to make running this image easier. It will start the container with your home directory bind-mounted and the UID and GIS matched to the host. The `travis` command can then be used to e.g add encrypted variables to .travis files.
