#!/bin/bash

set -e

base_dir=/shared/ucl/apps/restricted_modules

for a in `cat modules.list`
do
  echo "Linking $a"
  mpath=`dirname $a`
  mname=`basename $a`
  mkdir -p $base_dir/modulefiles/$mpath
  ln -f -s $base_dir/uclmodules/$a $base_dir/modulefiles/$a

done

