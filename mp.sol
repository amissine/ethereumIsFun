pragma solidity ^0.4.16;
/*
	solc --abi --bin --gas --overwrite -o dapp-bin mp.sol
*/

contract MerkleProofs {
    address public publisher;
    string public publisher_name;
    struct MerkleProof {
        bytes32 root_hash;
        uint timestamp;
    }
    MerkleProof[] public merkle_proofs;
    event ProofPublished(bytes32 root_hash, uint timestamp);
    function MerkleProofs(string input_publisher_name) {
        publisher = msg.sender;
        publisher_name = input_publisher_name;
    }
    function publishProof(bytes32 input_root_hash) {
        require(msg.sender == publisher);
        merkle_proofs.push(MerkleProof({
            root_hash: input_root_hash,
            timestamp: block.timestamp
        }));
        ProofPublished(getLatestProofRootHash(), getLatestProofTimestamp());
    }
    function getLatestProofRootHash() constant returns (bytes32 root_hash) {
        require(merkle_proofs.length > 0);
        root_hash = merkle_proofs[merkle_proofs.length - 1].root_hash;
    }
    function getLatestProofTimestamp() constant returns (uint timestamp) {
        require(merkle_proofs.length > 0);
        timestamp = merkle_proofs[merkle_proofs.length - 1].timestamp;
    }
}
