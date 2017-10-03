
var contractBallot = web3.eth.contract(abiBallot);
var ballot = contractBallot.new(
	{
		from: web3.eth.accounts[0], 
		data: binBallot, 
		gas: '4700000'
	}, function (e, contract) {
		if (e) {
			console.log("e.message=" + e.message); return;
		}
		if (!contract.address) {
			console.log("mining, contract.transactionHash=" + contract.transactionHash);
		} else {
			console.log('mined, contract.address=' + contract.address);
		}
	}
);

setTimeout(function() { console.log(ballot.address); }, 12000);
setTimeout(function() { console.log(ballot.transactionHash); }, 12500);
