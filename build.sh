#!/bin/bash
set -e

#export DEFCONFIG=docker-jetson-tx1_defconfig
docker-compose build
docker-compose run builder
