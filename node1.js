var mp_sol_merkleproofsContract = web3.eth.contract([{"constant":true,"inputs":[],"name":"publisher","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"merkle_proofs","outputs":[{"name":"root_hash","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLatestProofRootHash","outputs":[{"name":"root_hash","type":"bytes32"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"input_root_hash","type":"bytes32"}],"name":"publishProof","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLatestProofTimestamp","outputs":[{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"publisher_name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"inputs":[{"name":"input_publisher_name","type":"string"}],"payable":false,"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"name":"root_hash","type":"bytes32"},{"indexed":false,"name":"timestamp","type":"uint256"}],"name":"ProofPublished","type":"event"}]);

console.log('\nIn this final step of the procedure outlined in Surya\'s article, we will manually attach node1 to our contract, created by node3. First, copy and paste the following into this console:\n\n\tvar mp_sol_merkleproofs = mp_sol_merkleproofsContract.at(\n\nThen copy and paste the address of the contract from the node3 console window, type \')\' and press ENTER. Finally, copy and paste this and press ENTER:\n\n\tmp_sol_merkleproofs.getLatestProofRootHash()\n\nObserve the same result ("0xdeadbeef00000000000000000000000000000000000000000000000000000000") in both windows.')
