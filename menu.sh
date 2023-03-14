#!/bin/bash

# Usage: ./menu.sh <config_file>

config_file="$1"

cp bladeRF2-0.script "bladeRF_$config_file.script"

sed -i "s/tx config file=gpssim.bin format=bin/tx config file=$config_file format=bin/g" "bladeRF_$config_file.script"
