#!/usr/bin/env bash
set -e

starttime=$(date +%s.%N)
files="${FILES:-$PLUGIN_FILES}"

echo "-- Pushing coverage to Coveralls.io --"

for f in $(echo $files | tr -d '[[:space:]]' | tr "," "\n"); do
    if [[ -f $PWD/$f ]]; then
      echo "-- Sending $f to Coveralls.io --"
      eval 'cat $PWD/$f | ./node_modules/coveralls/bin/coveralls.js'
    fi
done

endtime=$(date +%s.%N)
echo "duration: $(echo "$endtime $starttime" | awk '{printf "%f", $1 - $2}')s"

if [[ $exitcode -eq 0 ]]; then
    echo "-- Coverage successfully pushed to Coveralls.io --"
else
    echo "-- Coverage failed to push to Coveralls.io --"
fi