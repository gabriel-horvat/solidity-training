// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract DynamicArrays {

// array of uints
    uint[] public numbers;

    function getLength () public view returns(uint){
        return numbers.length;
    }

    function addElement (uint item) public{
        numbers.push(item);
    }

    function popElement () public {
        numbers.pop();
    }

    function deleteElement(uint index) public {
        delete numbers[index];
    }

// memory arrays cannot be resized - push and pop unavailable
// pure whenever function wont change or read state
function memoryArray () public pure{
// init new memory array
uint[] memory x = new uint[](3);
x[0] = 1;
x[1]= 2;
x[2] = 3;

}

}