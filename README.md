# DemocraticVotes
Solidity Code for demovratic voting blockchain

#Blockchain available at:

```js
https://kovan.infura.io/v3/349064b180a64b74a9f432841c494b1f
```

# Deployment
For deploying install 
	truffle
and execute:
	truffle migrate

#Last Deployment Result:

```js
2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > block number:        20701749
   > block timestamp:     1599247366
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             0.53618499
   > gas used:            2188039 (0x216307)
   > gas price:           2 gwei
   > value sent:          0 ETH
   > total cost:          0.004376078 ETH

   -------------------------------------
   > Total cost:         0.004376078 ETH

2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > transaction hash:    0xde17df26793075b5bcfc06a8bea188d528ee6401361fac462bee2eda88c90dc1
   > Blocks: 2            Seconds: 4
   > contract address:    0xB665E90904c641f91f31a13da3Ab75e5a8034037
   > block number:        20701758
   > block timestamp:     1599247392
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             0.492123
   > gas used:            2233039 (0x2212cf)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.04466078 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.04466078 ETH
```

# For Testing Connection:

```js
truffle console
let instance = await DemocraticBallot.deployed()
let helloWorld = await instance.helloWorld()
helloWorld
```


# Last Abi Code:

```js
[
	{
		"inputs": [],
		"stateMutability": "nonpayable",
		"type": "constructor"
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
