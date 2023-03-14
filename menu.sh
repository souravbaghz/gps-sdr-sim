#!/bin/bash

# Usage: ./menu.sh <config_file>

config_file="$1"

cp bladeRF_2.0.script "bladeRF_2.0-$config_file.script"

sed -i "s/tx config file=gpssim.bin format=bin/tx config file=$config_file format=bin/g" "bladeRF_2.0-$config_file.script"
