#!/usr/bin/env bash

address1=$(sed -n -e $'/^"0x/p' < /tmp/peth_node1.co)
address2=$(sed -n -e $'/^"0x/p' < /tmp/peth_node2.co)

printf 'var addresses = [%s, %s, %s];\n' $address1 $address2 > node3loop2.js
suffix=$(cat ballot/ballotGiveRightsToVote.js)
printf '%s\n' "$suffix" >> node3loop2.js
