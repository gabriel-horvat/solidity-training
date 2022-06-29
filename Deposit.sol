// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Deposit {

modifier onlyOwner {
    require(msg.sender == owner);
    _;
}

address public owner;

constructor() {
owner = msg.sender;
}

receive () external payable {
// cannot have arguments
// cannot return anything
// only one receive function per contract
}

fallback () external payable {
    // called when function sig doesnt match
    // any functions in our contract
}

function getBalance () public view returns (uint) {
    // this refers to literally this contract
    return address(this).balance;

}

}