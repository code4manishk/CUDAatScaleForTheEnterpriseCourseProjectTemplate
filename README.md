# CUDAatScaleForTheEnterpriseCourseProject

This project uses box filter algorithm and applies it several files present in the data directory. Most of the files are quite large pgm files.
It basically demonstrate the usage of NPP Apis and filterbox function to perform a box filter on images.

## Project Description
Beyond just being a template for course members, this project can be used by non-course members as the general structure for CUDA projects.

## Code Organization

```bin/```
This folder hold binary code that is built automatically with make command. 

```data/```
    This folder contains pgm files on which filter will be applied. Generated images are also found in this directory.

```lib/```
This contains utility libs from lab and support files for cuda npp box filter packages.

```src/```
This directory contains a modified version of code from assigment lab and has been adapted to run the filter on multiple files.

```INSTALL```
    To run the program and generate the images, please run the following commands.
    make clean build
    make run
    This will produce the output images in current directory named out.
    One can also give input to program like path to input data directory containing pgm files and an out directory to write output images e.g.
    make run ARGS="./data/ /tmp/out"

```Makefile or CMAkeLists.txt or build.sh```
    Makefile contains changes adapted from the lab assigment to include support for multiple files and filter.

```run.sh```
An optional script to run the program, with help options

sh run.sh -i input_data_path -o output_path

example: sh run.sh -i ./data -o /tmp/out
