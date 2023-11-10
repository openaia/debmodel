# Build OpenAIA Pre-trained Models

Instructions of how to build OpenAIA Model Management at docker host.

## Pull docker-container

Install the [docker](https://docs.docker.com/engine/install/ubuntu/) and it is recommended to use associated docker image that openaia required.

```
$ docker pull ghcr.io/edgeble/easy-build/build-debos:bullseye
```

Run the docker with your workspace path,
```
$ docker run -ti --privileged --net host --volume=<path/to/workspace>:/home/build/shared ghcr.io/edgeble/easy-build/build-debos:bullseye
```

Run the docker with your workspace path, for sharing host ssh keys
```
$ docker run -ti --privileged --net host -v ~/.ssh:/home/build/.ssh --volume=<path/to/workspace>:/home/build/shared ghcr.io/edgeble/easy-build/build-debos:bullseye
```

## Build debos

All steps here are inside docker-container
```
build@myhost:~$ cd shared
build@myhost:~$ mkdir debos-openaia && cd debos-openaia
build@myhost:~$ git clone git@github.com:openaia/debos.git
build@myhost:~$ git clone git@github.com:openaia/debmodel.git
```

Build the openaia models
```
build@myhost:~$ cd debmodel
build@myhost:~$ ../debos/download-artifacts.sh
build@myhost:~$ sudo debos recipe.yaml
```

## Program

But make sure to copy kernel deb and u-boot images in overlay/packages directory.

We can program microSD or eMMC, assume /dev/sdX is microSD detected in host,
```
$ sudo bmaptool copy --bmap openaia-neu6b-io-bullseye.bmap openaia-neu6b-io-bullseye.img /dev/sdX
```
