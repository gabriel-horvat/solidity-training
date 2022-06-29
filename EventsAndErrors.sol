// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract EventErrors {

event Transfer (address from, address to, uint value, bool success, bytes indexed data);

error InsufficientBalance(uint256 available, uint256 required);

function sendEther(address to, uint value) public payable {
    // make sure were not trying to send amount
    // greater than we have in the contract
    if(value <= address(this).balance){
        revert InsufficientBalance(address(this).balance, value);
    }
(bool success, bytes memory data) = to.call{value: value} ("");
emit Transfer(msg.sender, to, value, success, data);
}

receive () external payable {
}

}