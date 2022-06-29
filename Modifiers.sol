// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Modifier {

modifier onlyOwner {
    require(msg.sender == owner);
_;
}

constructor() {
    owner = msg.sender
}

function changeOwner(address newOwner) public onlyOwner {
    owner = newOwner
}

}