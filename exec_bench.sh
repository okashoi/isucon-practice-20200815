#! /bin/sh
set -eu

cd /home/isucon/torb/bench
bench -remotes localhost -output /home/isucon/torb/result.json
