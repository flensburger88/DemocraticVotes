# DemocraticVotes
Solidity Code for demovratic voting blockchain

# Blockchain available at:

```js
https://kovan.infura.io/v3/349064b180a64b74a9f432841c494b1f
```

# Deployment
For deploying install 
	truffle
and execute:
	truffle migrate

# Last Deployment Result:

```js
2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > block number:        20721837
   > block timestamp:     1599327816
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.48658012
   > gas used:            2321514 (0x236c6a)
   > gas price:           2 gwei
   > value sent:          0 ETH
   > total cost:          0.004643028 ETH

   -------------------------------------
   > Total cost:         0.004643028 ETH


2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > transaction hash:    0xbf4a33786f1c3370f5c85189a013842c2851410a3b643abd0e6823935752f095
   > Blocks: 2            Seconds: 4
   > contract address:    0x9619f325dC945Fd5311158f0B7d792Ff6a1fc22d
   > block number:        20721847
   > block timestamp:     1599327840
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.44011558
   > gas used:            2366514 (0x241c32)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.04733028 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.04733028 ETH
```

# For Testing Connection:

```js
truffle console
let instance = await DemocraticBallot.deployed()
let helloWorld = await instance.helloWorld()
helloWorld
```

Tip: For receiving some Ether use https://faucet.kovan.network



# Last Abi Code:

```js
[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "activateProduction",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_pullRequestId",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_hostingplatform",
				"type": "string"
			}
		],
		"name": "appliedOnHostingPlatform",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "pollKey",
				"type": "uint256"
			}
		],
		"name": "appliedOnHostingPlatform",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "getNextVoteFinishedButUntransfered",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_pullRequestId",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_hostingplatform",
				"type": "string"
			}
		],
		"name": "getPollIndex",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "key",
				"type": "uint256"
			}
		],
		"name": "getVotingResult",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_pullRequestId",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_hostingplatform",
				"type": "string"
			}
		],
		"name": "getVotingResult",
		"outputs": [
			{
				"internalType": "bool",
				"name": "",
				"type": "bool"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "helloWorld",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "oracle",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"name": "polls",
		"outputs": [
			{
				"internalType": "string",
				"name": "pullRequestLink",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "pullRequestId",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "hostingplatform",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "title",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "description",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "voteEnd",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "isTransferd",
				"type": "bool"
			},
			{
				"internalType": "uint256",
				"name": "votersApproveCount",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "votersDenyCount",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_pullRequestLink",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_pullRequestId",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_hostingplatform",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_title",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_description",
				"type": "string"
			},
			{
				"internalType": "uint256",
				"name": "_voteEnd",
				"type": "uint256"
			}
		],
		"name": "submitNewPoll",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "key",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "approve",
				"type": "bool"
			}
		],
		"name": "vote",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "key",
				"type": "uint256"
			},
			{
				"internalType": "bool",
				"name": "approve",
				"type": "bool"
			},
			{
				"internalType": "address",
				"name": "voter",
				"type": "address"
			}
		],
		"name": "voteFake",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]
```
