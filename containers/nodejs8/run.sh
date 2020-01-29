#!/usr/bin/env bash

if [ -z "$DEFAULT_TIMEOUT" ]; then
  export DEFAULT_TIMEOUT=5
fi

timeout -t $DEFAULT_TIMEOUT node source.js < run.stdin 2> run.stderr 1> run.stdout || echo "TLE: Execution exceeded the maximum timelimit." > run.stderr
