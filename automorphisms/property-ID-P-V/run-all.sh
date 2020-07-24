#!/bin/bash

source permute.sh

for f  in ex*.pl
do
    echo "*** Evaluating UNIQUE QUERY on DB $f ***"
    clingo -n0 unique.pl $f 
    echo
done


for f  in ex*.pl
do
    echo "*** Evaluating AUTOMORPHISM on DB $f ***"
    clingo -n0 automorphism.pl $f 
    echo
done

