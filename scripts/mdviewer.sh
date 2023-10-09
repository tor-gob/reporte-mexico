#!/bin/bash
input_file="$@"
output_dir=/tmp/mdviewer
ts=$(date +%s)
output_file=$output_dir/$ts.html

mkdir -p $output_dir
pandoc "$input_file" > $output_file
firefox $output_file

