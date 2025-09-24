# travis

* ![Build Status](https://github.com/snw35/travis/actions/workflows/update.yml/badge.svg)
* [Dockerhub: snw35/travis](https://hub.docker.com/r/snw35/travis)

Self-updating Travis CLI container.

Allows you to run the travis CLI tool without having to install Ruby and build the gem and all of its dependencies on your machine.

## How To Use

Install and run the 'travis' command:

```shell
sudo curl https://raw.githubusercontent.com/snw35/travis/master/traviscli -o /usr/local/bin/traviscli && sudo chmod +x /usr/local/bin/traviscli;
```

Navigate to your local checkout of the repo you want to work with

You can now run 'travis' and perform any tasks the CLI is capable of. For example, to add an encrypted variable to a `.travis.yml` file:

```shell
travis encrypt VARIABLE_NAME=raw_value --add env.global
```
