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
Compiling your contracts...
===========================
> Compiling .\contracts\DemocraticBallot.sol
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang

2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > block number:        20807553
   > block timestamp:     1599673029
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.3968244
   > gas used:            2318770 (0x2361b2)
   > gas price:           2 gwei
   > value sent:          0 ETH
   > total cost:          0.00463754 ETH

   -------------------------------------
   > Total cost:          0.00463754 ETH


2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > transaction hash:    0xda9c5f44dcd015d69155bb625bfb082ba7fa3b2a141782353daba169dddc7523
   > Blocks: 0            Seconds: 0
   > contract address:    0x478190f0327E27a3C9d1E8E55e3D592bBB3ab270
   > block number:        20807561
   > block timestamp:     1599673044
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.35418654
   > gas used:            2363770 (0x24117a)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.0472754 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0472754 ETH


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
