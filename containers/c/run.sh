#!/usr/bin/env bash

chmod 755 exe

./exe < run.stdin 2> run.stderr 1> run.stdout
