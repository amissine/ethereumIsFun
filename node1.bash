cp node1.js node1-appended.js
contractAddress=$(sed -n -e $'/> contract.address=/p' < /tmp/peth_node3.co)
contractAddress=${contractAddress:19}
echo $contractAddress | sed $'s/.*/var mp_sol_merkleproofs = mp_sol_merkleproofsContract.at("&");/' \
	| cat >> node1-appended.js
echo "setTimeout(function(){ console.log(mp_sol_merkleproofs.getLatestProofRootHash()); }, 4000);" >> node1-appended.js
echo "setTimeout(function(){ console.log('\nObserve the same result, 0xdeadbeef00000000000000000000000000000000000000000000000000000000, in both windows.'); }, 4500);" >> node1-appended.js
echo "setTimeout(function(){ console.log('\n\nThis concludes the test. Close this window with CTRL-D, all other test windows with CTRL-C. And thanks for watching!'); }, 5000);" >> node1-appended.js

