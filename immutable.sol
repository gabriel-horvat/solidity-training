// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Immutable {

uint public price;
address public immutable owner;

constructor (uint256 _price) {
price = _price;
owner = msg.sender;

}

function setPrice(uint256  _price) public {
price = _price;
}

}