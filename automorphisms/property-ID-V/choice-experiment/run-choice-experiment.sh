#!/bin/bash

clingo -n0 -V0 -s1 choice-disjunction.pl | grep ":" > choice-disjunction.log
clingo -n0 -V0 -s1 choice-curly.pl | grep ":" > choice-curly.log

diff choice-disjunction.log choice-curly.log



