#!/usr/bin/env bash

cp node3.js ballot/saved-node3.js
cp ballot/ballot2.bash ballot2.bash

solc --abi --bin --gas --optimize --overwrite -o dapp-bin ballot/ballot.sol
cat dapp-bin/Ballot.abi | sed $'s/.*/var\ abiBallot\ =\ &;/' > node3.js
cat dapp-bin/Ballot.bin | sed $'s/.*/var\ binBallot\ =\ \'0x&\';/' >> node3.js 
cat ballot/ballot-node3.js >> node3.js
./peth -R

rm node3loop2.js
rm ballot2.bash
cp ballot/saved-node3.js node3.js
