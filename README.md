# IDE Workers

[![Build Status](https://travis-ci.com/ifaisalalam/ide-worker.svg?branch=master)](https://travis-ci.com/ifaisalalam/ide-worker)

This repository contains the workers source in which the code is actually executed.

## How does it work?

A Worker is a docker image which runs the code.

- Each image contains a `compile.sh` file (if required) which compiles the source code.
- Once the code is compiled (if required), `run.sh` executes the code or the executable binary.

## Base Image

All worker images are built on top of [alpine linux](https://alpinelinux.org/) 3.10

## Supported Languages

Presently, the workers support the following languages:

 - [c](containers/c)
 - [c++](containers/cpp)
