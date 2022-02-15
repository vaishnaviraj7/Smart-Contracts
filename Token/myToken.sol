pragma solidity ^0.4.0;

contract myToken {
    mapping(address =>uint256) public amount;
    uint256 totalAmount;
    string tokenName;
    string tokenSymbol;
    uint256 decimal;

    constructor() public{
        totalAmount = 10000 * 10**18;
        amount[msg.sender] = totalAmount;
        tokenName="Crystal";
        tokenSymbol="Crystal";z
        decimal=18;
    }

    function totalSupply() public view returns(uint256){
        return totalAmount;
    }
    
    function balanceOf(address receiver) public view returns(uint256){
        return amount[receiver];
    }

    function transfer(address to_receiver ,uint256 _value) public returns(bool){
        require(_value<=amount[msg.sender]);
        amount[msg.sender]=amount[msg.sender]-_value;
        amount[to_receiver]=amount[to_receiver]+_value;
        return true;

    }
}