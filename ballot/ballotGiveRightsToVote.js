
setTimeout(function() { ballot.giveRightToVote(addresses[0]); }, 1000);
setTimeout(function() { ballot.giveRightToVote(addresses[1]); }, 2000);
setTimeout(function() { ballot.giveRightToVote(addresses[2]); }, 3000);
setTimeout(function() { console.log(ballot.votersTotal()); }, 15000);
