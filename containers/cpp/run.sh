#!/usr/bin/env bash

chmod 755 exe

if [ -z "$DEFAULT_TIMEOUT" ]; then
  export DEFAULT_TIMEOUT=5
fi

timeout $DEFAULT_TIMEOUT ./exe < run.stdin 2> run.stderr 1> run.stdout || echo "TLE: Execution exceeded the maximum timelimit." > run.stderr
