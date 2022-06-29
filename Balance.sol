// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Balance {

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

function sendEther(address payable destination, uint amount) public onlyOwner returns (bool) {
    // make sure were not trying to send amount
    // greater than we have in the contract
    require(amount <= address(this).balance);
    bool response = destination.send(amount);
    return response;
}

function transferEther(address payable destination, uint amount) public onlyOwner  {
    // make sure were not trying to send amount
    // greater than we have in the contract
    require(amount <= address(this).balance);
    destination.transfer(amount);
}

function callEther(address payable destination, uint amount) public returns (bool, bytes memory)  {
    // make sure were not trying to send amount
    // greater than we have in the contract
    require(amount <= address(this).balance);
(bool success, bytes memory returnBytes) = destination.call{value: amount} ("");
(success, returnBytes);
}

}