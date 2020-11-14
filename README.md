# Ethereum Smart Contracts

Just a compendium of Ethereum Smart Contracts I have created or I use.

It is configured with Truffle for an first easy execution (compilation and deployment).

## Pre-requisites

Install the following:

* [**Truffle**](https://www.trufflesuite.com/truffle): Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier
* [**MetaMask**](https://metamask.io/): A crypto wallet & gateway to blockchain apps

Or just "copy & paste" the contracts into [**Remix IDE**](https://remix.ethereum.org) (online, fully web-base Solidity IDE).

Optional (but required if you want to run as is):

* [**Ganache**](https://www.trufflesuite.com/ganache): Quickly fire up a personal Ethereum blockchain which you can use to run tests, execute commands, and inspect state while controlling how the chain operates

## Execution

Open a Command Prompt and run the following to compile the Smart Contracts:

```shell
truffle compile
```

Run Ganache (the Ethereum pseudo-node).

Run this command, which will deploy the SimpleSmartContract contract into Ganache:

```shell
truffle migrate
```


## Next steps

Where to go from here? These are some tips which might help.

* **Deploying a different Smart Contract**
  * Edit `migrations/1_initial_migration.js` and update or add other contracts.
* **Deploying somewhere else**
  * Edit `truffle-config.js` and setup a new network (local node, testnet or mainnet!)
* **Develop your own Smart Contracts**
  * Use Visual Studio Code (the ['solidity' extension](https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity) helps) and open this project. Then just edit your Smart Contracts.