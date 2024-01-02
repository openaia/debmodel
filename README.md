# OpenAIA Debmodel

Build instruction for OpenAIA Debmodel image in docker container.

## Clone source

```
$ mkdir debmodel-openaia && cd debmodel-openaia
$ git clone git@github.com:edgeble/debos.git
$ git clone git@github.com:edgeble/debmodel.git
```

## Download artifacts

```
$ cd debos && ./download-artifacts.sh && cd -
$ cd debmodel && ./download-artifacts.sh && cd -
```

## Build OpenAIA Debmodel

Install the [docker](https://docs.docker.com/engine/install/ubuntu/) at host.

Build OpenAIA Debmodel for 6TOPS,
```
$ docker run -ti --privileged --net host -v `pwd`:/home/build/shared -w /home/build/shared ghcr.io/edgeble/easy-dock/debian:bookworm-v1 sudo debos --memory=8Gb -t imgname:6tops debmodel/recipe.yaml
```

## Program

We can program microSD or eMMC, assume /dev/sdX is microSD detected in host,
```
$ sudo bmaptool copy --bmap openaia-bullseye-6tops.bmap openaia-bullseye-6tops.img.gz /dev/sdX
```
