# DemocraticVotes

This project contains the solidity code for the smart contract of the thesis 
Development of a blockchain based access control protocol for GitHub repositories as Open-Source project

It represents the core trust instance in this Thesis.
Therefore an existing Chain was used to deploy the smart contract, which handles the votes above the pull requests.
The Blockchain used in this Thesis is Etherum.
All smart contracts that have been designed are written in Solidity.

It was chosen to use Ethereum because there exist many tools, that support the development of smart contracts.
An additional reason for choosing the Ethereum Blockchain is the availability of a test Network (Kovan), which makes it easy to deploy and test the smart contracts.
The Smart Contract for Managing the Votes has been deployed on this Test Blockchain and is publicly available at the later mentioned adress.
This project does not need any external libraries and has been tested during the development phase.
All details of the deployment can be found in this Readme.


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
The Abi code, which is required for the communication from any client is located at:
AbiCode.txt

