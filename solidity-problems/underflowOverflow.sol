pragma solidity 0.8.15;

contract Space {
    uint8 public price = 255;


// unchecked math - will cause overflow
    function f1() public returns (uint8){
        unchecked {
            price+= 1;
        }
    }

function f2() public returns (uint8) {
    price += 1;

    // we do not do any unchecked math here
    // underflow and overflow protection is built into solidity
    // these days - this function will revert
    // also this is great bc we no longer need SafeMath

}


}