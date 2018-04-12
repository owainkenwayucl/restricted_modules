#!/bin/bash

set -e

base_dir = /shared/ucl/apps/restricted_modules

cd $base_dir

git clone https://github.com/UCL-RITS/rcps-modulefiles.git uclmodules

mkdir -p $base_dir/modulefiles

for a in applications bundles compilers core development libraries
do
  mkdir -p $base_dir/modulefiles/$a
done
