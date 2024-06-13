
# MyToken Solidity Smart Contract (Metacrafters)

This Solidity smart contract facilitates token minting and burning functionalities. It serves as a foundation for creating a token system where users can create (mint) new tokens and destroy (burn) existing ones. The contract maintains essential details such as the token name, ID, total supply, and individual token balances for addresses.

## Description

1.  `// SPDX-License-Identifier: MIT` - This line specifies the SPDX license identifier for the contract, indicating that it's licensed under the MIT License.

2.  `pragma solidity ^0.8.18;` - This pragma directive specifies that the contract should be compiled using a Solidity compiler version greater than or equal to 0.8.18, but less than 0.9.0.

3. The contract is named as `MyToken`.
4. Public The contract is named as `MyToken`.Variables
   - `Name`: Stores the name of the token.
   - `ID`: Stores the ID of the token.
   - `Total_Supply`: Stores the total supply of the token.
  
5. ```solidity
    mapping (address => uint) public Balances;

  This line declares a public mapping named `Balances`, which maps addresses to their token balances.

6. The constructor function initializes the contract by setting the `Name` to "RISHABH JAIN", `ID` to "50095", and `Total_Supply` to 0 when the contract is deployed.

6. The function `Mint` is used to increase the total supply and balance of a specified address. It takes two parameters: `_address` (the address to which tokens will be minted) and `_amount` (the number of tokens to mint). Inside the function, it iterates `_amount` times, incrementing both `Total_Supply` and the balance of `_address` by 1 in each iteration.

7. The function `Burn` is used to decrease the total supply and balance of a specified address. It takes two parameters: `_address` (the address from which tokens will be burnt) and `_amount` (the number of tokens to burn). Before burning tokens, it checks if the balance of `_address` is sufficient through a `require` statement. If the balance is sufficient, it iterates `_amount` times, decrementing both `Total_Supply` and the balance of `_address` by 1 in each iteration.

## Getting Started
### Access the code file

  

* Access the code file

```

https://github.com/rj7604/ETH_Proof_Assessment/blob/main/ETH_Proof_Assessment.sol

```

### Installing

* Go to Remix IDE, which is a website where you can create and test smart contracts.


### Executing program

* Drag and drop the ETH_Proof_Assessment.sol file into the Remix workspace. This file contains the code for your smart contract.

* Click on the "Compile" button on the left sidebar. This checks the code for errors and prepares it for deployment.

* After compilation, click the "Deploy" button next to the "Compile" button. This will deploy your smart contract to the Ethereum blockchain.

* Once deployed, you can test your smart contract by entering values into its functions and seeing how it behaves. Use the input fields provided to test different scenarios and ensure your contract works as intended.



## Authors

Contributor name and contact info.

  
RISHABH JAIN

rishabhjain7604@gmail.com

