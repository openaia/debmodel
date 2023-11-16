# Build OpenAIA Pre-trained Models

Instructions of how to build OpenAIA Model Management at docker host.

## Pull docker-container

Install the [docker](https://docs.docker.com/engine/install/ubuntu/) and use bookworm container images as debos latest
updates are available in bookworm.

```
$ docker pull ghcr.io/openaia/easy-build/build-debos:bookworm-v0.1
```

Run the docker with your workspace path,
```
$ docker run -ti --privileged --net host -v <path/to/workspace>:/home/build/shared -w /home/build/shared ghcr.io/openaia/easy-build/build-debos:bookworm-v0.1
```

Run the docker with your workspace path, for sharing host ssh keys
```
$ docker run -ti --privileged --net host -v ~/.ssh:/home/build/.ssh -v <path/to/workspace>:/home/build/shared -w /home/build/shared ghcr.io/openaia/easy-build/build-debos:bookworm-v0.1
```

## Build debos

All steps here are inside docker-container
```
build@myhost:~$ mkdir debmodel-openaia && cd debmodel-openaia
build@myhost:~$ git clone git@github.com:openaia/debos.git
build@myhost:~$ git clone git@github.com:openaia/debmodel.git
```

Download debos artifacts
```
build@myhost:~$ cd debos && ./download-artifacts.sh && cd -
```

Build the openaia models for 6TOPS,
```
build@myhost:~$ cd debmodel
build@myhost:~$ ./download-artifacts.sh
build@myhost:~$ sudo debos --memory=4Gb -t imgname:6tops recipe.yaml
```

## Program

But make sure to copy kernel deb and u-boot images in overlay/packages directory.

We can program microSD or eMMC, assume /dev/sdX is microSD detected in host,
```
$ sudo bmaptool copy --bmap openaia-neu6b-io-bullseye.bmap openaia-neu6b-io-bullseye.img.gz /dev/sdX
```
