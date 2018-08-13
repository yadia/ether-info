# Solidity Documents
A must know information list for getting started with Smart contract development.

Resource: [Solidity Read the Docs](https://solidity.readthedocs.io/en/v0.4.24/)

## Quick links

1. [Events](https://solidity.readthedocs.io/en/develop/contracts.html#events)
2. [ABI Application Binary Interface](https://solidity.readthedocs.io/en/v0.4.21/abi-spec.html)

-
### Truffle Tutorials
1. [Truffle petshop](https://truffleframework.com/tutorials/pet-shop)

#### Requires

- Node.js v6+
- Git
- Truffle

```
npm install -g truffle
```
- Ganache

```
npm install -g ganache-cli
```

-

## Petshop tutorial
**Variables**

1. Pets
2. petsId uint
3. address

16 addresses for the petvalue of 0 = unadopted pet

**Function**

1. adopt()
2. getAdopted()

#### Steps
1. **Contract name:** Adoption.sol
2. **Pragma** compatible compiler version ^0.4.17
3. **Define the contraact**
4. Declare Adoption function --> updates aption state value.
 parameters: 
 	- Takes one parameter
 	- Public
 	- returns uint to indicate success

````
pragma solidity ^0.4.17;

contract Adoption{

}

````

