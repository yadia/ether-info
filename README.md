# Ether-info
A repository with informational instructions on getting started developing Smart contracts. It includes the must haves, must dos, and others.

# Must have
1. [Truffle](https://truffleframework.com/)
```
npm install -g truffle
```

2. [Ganache](https://www.npmjs.com/package/ganache-cli)
```
npm install -g ganache-cli
```
 - Working with Ganache and Truffle [link](https://truffleframework.com/docs/ganache/using).

3. [Ganache App](https://truffleframework.com/ganache) Mac app to locally deploy blockchain


4. [Remix IDE](http://remix.ethereum.org)


# Extra Resources
 - [Truffle Frameworks](truffleframework.com/boxes)
 - [Ethereum Package Manager](https://www.ethpm.com/)
 - [Solidity Docs](https://solidity.readthedocs.io/en/latest/types.html)

 
## Sublime Text IDE
Must have packages if you are using Sublime to code some solidty. Use Sublime Package control to install it.

- [Ethereum](https://packagecontrol.io/packages/Ethereum) Ethereum Solidity Language Syntaxt for Sublime Text

## Getting started with Truffle
### To create a new project
1. Initialize project with Truffle
```
$ truffle init
``` 
**Results:**
```
Downloading...
Unpacking...
Setting up...
Unbox successful. Sweet!

Commands:

  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
 LOCATION> ~Mylocal/dir/
 ```
 
 ### To unbox a project
 1. Select the name of the project and unbox
 ```
 truffle unbox [PROJECTNAME]
 ```
 
 2. Run truffle compile
 ```
 truffle compile
 ```
 **Results**
 ```
Compiling ./contracts/ConvertLib.sol...
Compiling ./contracts/MetaCoin.sol...
Compiling ./contracts/Migrations.sol...
Writing artifacts to ./build/contracts
````
 A JSON is created for each contract.
 
 3. You can change the network to the development network of Ganache.
 In [truffle.json]
 ```
 module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  // 
  networks:{
    development:{
      host: "120.0.0.1",
      port: "8545",  //truffle develop is 7545
      network_id:"*"
    }
  }
};
 ```
 ### Migrate Truffle project to Ganache
 1. Open Ganache
 ```
 $ ganache-cli
 ```
 2. Migrate the smart contract to the developmet blockchain
```
truggle migrate
```

 
 
 
 
 
