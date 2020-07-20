#!/bin/bash

for f  in ex*.lp4
do
    echo "*** Processing file $f ***"
    clingo -n0 -V0 $f unique.lp4
    echo
done

