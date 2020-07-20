#!/bin/bash

source permute.sh

for f  in ex*.lp4
do
    echo "*** Processing file $f ***"
    clingo -n0 $f unique.lp4
    echo
done

