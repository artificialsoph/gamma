#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

pip install gamma -U --extra-index-url https://pypi.fury.io/artificialsoph/
