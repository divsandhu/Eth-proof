//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract myToken{
    string public tokenName="DIVYANSH";
    string public tokenAbbrevation="DIV";
    uint public totalSupply=0;

    mapping(address => uint) public balances;

    function minting(address _address,uint _value) public{
        totalSupply += _value;
        balances[_address] += _value;
    }
    function burning(address _address,uint _value) public{
        if(balances[_address] > _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}