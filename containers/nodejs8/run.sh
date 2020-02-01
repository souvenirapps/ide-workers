#!/usr/bin/env bash

if [ -z "$DEFAULT_TIMEOUT" ]; then
  export DEFAULT_TIMEOUT=5
fi

/usr/bin/time -f "%e" -o time.log timeout -t $DEFAULT_TIMEOUT bash -c "node source.js < run.stdin 2> run.stderr 1> run.stdout || true" || echo "TLE: Execution exceeded the maximum timelimit." > tle.stderr
