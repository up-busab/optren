#!/bin/bash
HERE=$(pwd)

#export BUILDKIT_PROGRESS=plain

build()
{
    APP_TAG=$1
    IMAGE_DIR=$2
    
    #BUILD_ARGS="--build-arg APP_TAG=$APP_TAG --build-arg ARG2=$ARG2"
    #docker build $BUILD_ARGS -t $APP_TAG -f $HERE/Dockerfile .
    
    cd $IMAGE_DIR && docker build -t $APP_TAG -f $IMAGE_DIR/Dockerfile .
}

echo -e "\033[1;91mBuilding mitsuba_render image\033[0m"
build upbusab/mitsuba_render $HERE/images/mitsuba

