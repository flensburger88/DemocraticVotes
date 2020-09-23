# DemocraticVotes

Since the development of the git protocol, the amount of open-source project increases year by year.
For supporting this, many hosting platforms exist, which allow string of a project master and collaborating with other developers.
But in all hosting platforms, the project depends on the behavior of the project owner.
He can decide to integrate source code sections without asking anyone about it, the same way as he can prevent others from performing changes in the project.
In the thesis "Development of a blockchain based access control protocol for GitHub repositories as Open-Source project" by Torben Ulrich , the question if it is possible to develop a protocol, which uses a decentralized access control for these centralized source code hosting platforms is discussed.
In consequence, a protocol is designed, which removes the power from a project owner and passes all code changing decisions into a community of developers.
The community, which can decide about the code changes is defined as an open group of developers, which can permanently change.
To reach this permission transfer a smart contract is implemented, that offers a democratic voting process.
The vote which is performed in the blockchain results in the decision of a pull request being merged.
By doing this, this smart contract allows transparent verifying of all changes that are performed on the source code of an open-source project.
Moreover, this permission transfer completely removes the project owner and therefore removes possibilities to bypass decisions which are met by the community.
The protocol is implemented against the gitHub API on an Ethereum blockchain and is shared here an open-source project itself.


This project contains the solidity code for the smart contract of the thesis.


It represents the core trust instance in this Thesis.
Therefore an existing Chain was used to deploy the smart contract, which handles the votes above the pull requests.
The Blockchain used in this Thesis is Etherum.
All smart contracts that have been designed are written in Solidity.

It was chosen to use Ethereum because there exist many tools, that support the development of smart contracts.
An additional reason for choosing the Ethereum Blockchain is the availability of a test Network (Kovan), which makes it easy to deploy and test the smart contracts.
The Smart Contract for Managing the Votes has been deployed on this Test Blockchain and is publicly available at the later mentioned adress.
This project does not need any external libraries and has been tested during the development phase.
All details of the deployment can be found in this Readme.

The transfer oracle details are available at https://github.com/flensburger88/DemocraticOracle
The webView details are available at https://github.com/flensburger88/DemocraticWebView

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

