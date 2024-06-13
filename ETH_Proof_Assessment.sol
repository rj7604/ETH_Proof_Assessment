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
