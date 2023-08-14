# CUDAatScaleForTheEnterpriseCourseProjectTemplate
This project uses box filter algorithm and applies it several files present in the data directory. Most of the files are quite large pgm files

## Project Description

Beyond just being a template for course members, this project can be used by non-course members as the general structure for CUDA projects.


## Code Organization

```bin/```
This folder should hold all binary/executable code that is built automatically or manually. Executable code should have use the .exe extension or programming language-specific extension.

```data/```
    This folder contains pgm files on which filter will be applied. Generated images are also found in this directory.
```lib/```
Any libraries that are not installed via the Operating System-specific package manager should be placed here, so that it is easier for inclusion/linking.

```src/```
This directory contains a modified version of code from assigment lab and has been adapted to run the filter on multiple files.

```INSTALL```
    To generate the images, please run the following commands.
    make clean
    make
    make run

```Makefile or CMAkeLists.txt or build.sh```
    Makefile contains changes adapted from the lab assigment to include support for multiple files and filter.

```run.sh```
An optional script to run the program, i.e. basically it does make and make run.