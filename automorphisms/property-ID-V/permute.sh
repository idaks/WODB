# Apply the permutation: blue <=> red; small <=> circle; large <=> box
# .. to Example 3 and produce the isomorphic Example 4

cp ex3.lp4 ex4.lp4
sed -i '.bak' 's/blue/BLAU/g; s/red/blue/g; s/BLAU/red/g' ex4.lp4 
sed -i '.bak' 's/small/KLEIN/g; s/circle/small/g; s/KLEIN/circle/g' ex4.lp4
sed -i '.bak' 's/large/GROSS/g; s/box/large/g; s/GROSS/box/g' ex4.lp4
rm ex4.lp4.bak
