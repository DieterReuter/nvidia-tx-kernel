
# Building NVIDIA TX1/TX2 Linux Kernel the Docker Way
[![Build Status](https://travis-ci.org/DieterReuter/nvidia-tx-kernel.svg?branch=master)](https://travis-ci.org/DieterReuter/nvidia-tx-kernel)


## Prerequisites
In order to build the Linux Kernel for the NVIDIA Jetson TX1/TX2 boards you only need a few tools on your Mac:

1. git
2. [Docker for Mac](https://docs.docker.com/docker-for-mac/)


## Step 1: Clone the repo
```
$ git clone https://github.com/DieterReuter/nvidia-tx-kernel/
$ cd nvidia-tx-kernel
```


## Step 2: Build the kernel
To build the Linux kernel you only have to invoke a single command. All the required building steps will be run automatically by the Docker tools inside of an isolated environment.
```
$ ./build.sh
```

That's all !!!


## Build results
The build artifacts can be found on a local directory `./builds`.
```
$ ls -al builds/20170128-191848/
total 266376
drwxr-xr-x  14 dieter  staff        476 Jan 28 20:26 .
drwxr-xr-x  13 dieter  staff        442 Jan 28 20:18 ..
-rw-r--r--   1 dieter  staff     139389 Jan 28 20:18 4.9.6-bee42.config
-rw-r--r--   1 dieter  staff  108936486 Jan 28 20:26 4.9.6-bee42.tar.gz
-rw-r--r--   1 dieter  staff         85 Jan 28 20:26 4.9.6-bee42.tar.gz.sha256
-rwxr-xr-x   1 dieter  staff   14445056 Jan 28 20:26 Image
-rw-r--r--   1 dieter  staff    6291373 Jan 28 20:26 Image.gz
-rw-r--r--   1 dieter  staff    6316385 Jan 28 20:26 bootfiles.tar.gz
-rw-r--r--   1 dieter  staff         83 Jan 28 20:26 bootfiles.tar.gz.sha256
-rw-r--r--   1 dieter  staff      37137 Jan 28 20:26 tegra132-norrin.dtb
-rw-r--r--   1 dieter  staff      43755 Jan 28 20:26 tegra210-p2371-0000.dtb
-rw-r--r--   1 dieter  staff      51668 Jan 28 20:26 tegra210-p2371-2180.dtb
-rw-r--r--   1 dieter  staff      44243 Jan 28 20:26 tegra210-p2571.dtb
-rw-r--r--   1 dieter  staff      51541 Jan 28 20:26 tegra210-smaug.dtb
```


---
The MIT License (MIT)

Copyright (c) 2017 Dieter Reuter
