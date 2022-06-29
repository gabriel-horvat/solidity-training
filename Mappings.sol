// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Mapping {

mapping (address => uint) public bids;


// add a key value pair to a mapping
function bid() payable public {
bids[msg.sender] = msg.value;
}

}