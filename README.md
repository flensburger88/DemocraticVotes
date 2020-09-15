# DemocraticVotes
Solidity Code for demovratic voting blockchain

# Blockchain available at:

```js
https://kovan.infura.io/v3/349064b180a64b74a9f432841c494b1f
```
Byte code uploaded via https://kovan.etherscan.io/verifyContract


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
   > block number:        20931732
   > block timestamp:     1600172789
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.188844722
   > gas used:            2706959 (0x294e0f)
   > gas price:           2 gwei
   > value sent:          0 ETH
   > total cost:          0.005413918 ETH

   -------------------------------------
   > Total cost:         0.005413918 ETH



2_deploy_ballot.js
==================

   Deploying 'DemocraticBallot'
   ----------------------------
   > transaction hash:    0x0093820a9fbc53643980ca71f08ec9cf5f7fa2c82ce383029902e8822e3f3ea5
   > Blocks: 1            Seconds: 4
   > contract address:    0xCeAADd95e319aAbF0FA31C910E14f6d9c314Db2B
   > block number:        20931741
   > block timestamp:     1600172804
   > account:             0x3F60756BEA11966E4343e382E1a7A1832B64a001
   > balance:             1.13921946
   > gas used:            2751959 (0x29fdd7)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.05503918 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.05503918 ETH




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
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"constant": false,
		"inputs": [],
		"name": "activateProduction",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
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
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "pollKey",
				"type": "uint256"
			}
		],
		"name": "appliedOnHostingPlatform",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getNextVoteFinishedButUntransfered",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
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
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getPollLength",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "voteindex",
				"type": "uint256"
			}
		],
		"name": "getVotersApprove",
		"outputs": [
			{
				"internalType": "address[]",
				"name": "",
				"type": "address[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"internalType": "uint256",
				"name": "voteindex",
				"type": "uint256"
			}
		],
		"name": "getVotersDeny",
		"outputs": [
			{
				"internalType": "address[]",
				"name": "",
				"type": "address[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
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
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
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
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "helloWorld",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"payable": false,
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "oracle",
		"outputs": [
			{
				"internalType": "address",
				"name": "",
				"type": "address"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
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
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
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
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
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
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
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
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	}
]
```
