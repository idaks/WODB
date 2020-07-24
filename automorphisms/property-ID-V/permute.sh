# Apply the permutation: blue <=> red; small <=> circle; large <=> box
# .. to Example 3 and produce the isomorphic Example 4

echo
echo "*** Permuting Example 3 ==> creating new Example 4 ***" 
echo 

cp ex3.pl ex4.pl
sed -i '.bak' 's/blue/__TEMP__/g; s/red/blue/g; s/__TEMP__/red/g' ex4.pl          # red <=> blue
sed -i '.bak' 's/small/__TEMP__/g; s/circle/small/g; s/__TEMP__/circle/g' ex4.pl  # small <=> circle
sed -i '.bak' 's/large/__TEMP__/g; s/box/large/g; s/__TEMP__/box/g' ex4.pl        # large <=> box
sed -i '.bak' 's/size/__TEMP__/g; s/shape/size/g; s/__TEMP__/shape/g' ex4.pl      # size <=> shape 
rm ex4.pl.bak
