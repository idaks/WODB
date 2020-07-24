#!/bin/bash

echo "*** Permuting Example 3 to obtain Example 4 ***" 
source permute.sh

for f  in ex*.lp4
do
    echo "*** Evaluating UNIQUE QUERY on DB $f ***"
    clingo -n0 unique.lp4 $f 
    echo
done


for f  in ex*.lp4
do
    echo "*** Evaluating AUTOMORPHISM on DB $f ***"
    clingo -n0 automorphism.lp4 $f 
    echo
done

