/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken 
{
    // Public variables
    string public Name;
    string public ID;
    uint public Total_Supply;

    // Mapping 
    mapping (address => uint) public Balances;

    // Constructor to initialize the contract
    constructor() 
    {
        Name = "RISHABH JAIN";
        ID = "50095";
        Total_Supply = 0;
    }

    // Mint function
    function Mint(address _address, uint _amount) public 
    {
        for (uint i = 0; i < _amount; i++) {
            Total_Supply++;
           Balances[_address]++;
        }
    }

    // Burn function 
    function Burn(address _address, uint _amount) public 
    {
        require(Balances[_address] >= _amount, "Insufficient balance");
        for (uint i = 0; i < _amount; i++) {
            Total_Supply--;
            Balances[_address]--;
            }
        }
}
