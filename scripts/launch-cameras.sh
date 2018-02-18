#!/bin/sh

cd /var/lib/myfrdcsa/codebases/minor/world-state-monitor/scripts
./view-and-listen-through-camera.pl -d "computer room (facing south)" &
./view-and-listen-through-camera.pl -d "garage north" &
# ./view-and-listen-through-camera.pl -d "entry way" &
