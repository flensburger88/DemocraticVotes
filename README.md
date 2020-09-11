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
   > block number:        20841806
   > block timestamp:     1599811393
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.29750654
   > gas used:            2334560 (0x239f60)
   > gas price:           2 gwei
   > value sent:          0 ETH
   > total cost:          0.00466912 ETH

   -------------------------------------
   > Total cost:          0.00466912 ETH


2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > transaction hash:    0x8f676414c885cd6cb2835ae3053cfc3324c5decd751220bcd0c00f8c64f07087
   > Blocks: 1            Seconds: 4
   > contract address:    0x33D2ad36C98E563F2930D0f7Dc219b1B8346Ae10
   > block number:        20841815
   > block timestamp:     1599811412
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.25458446
   > gas used:            2379560 (0x244f28)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.0475912 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0475912 ETH



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
		"inputs": [],
		"name": "getPollLength",
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
