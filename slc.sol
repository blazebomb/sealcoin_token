// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract MyToken {
    // public variables here
    string public tokenname = "sealcoin"; 
    string public tokenAbbrv = "slc"; 
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _to, uint _value) public {
        totalSupply += _value; 
        balances[_to] += _value;
    }
    // burn function
    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_from] -= _value;
    
    }
}
