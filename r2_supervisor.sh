#! /bin/bash


function run_robot {
    echo "Starting r2d8"
    /usr/bin/python2 /home/r2d8/r2d8_scripts/artoodeeeight.py
}


# to kill this app, kill the reboot script, then kill the app
until run_robot; do
    echo "Server 'artoodeeeight' crashed with exit code $?.  Respawning.." >&2
    sleep 1
done