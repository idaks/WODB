#!/bin/bash

source permute.sh

for db in ex*.pl
do
    echo "*** Evaluating UNIQUE QUERY on DB $db ***"
    clingo -n0 $db unique.pl 
    echo
done


for db in ex*.pl
do
    echo "*** Evaluating AUTOMORPHISM on database $db ***"
    clingo -n0 $db db2edges.pl automorphism.pl 
    echo
done

