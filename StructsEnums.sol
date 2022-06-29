// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Universe {


// could also declare struct outside of contract
// in order for all contracts to have access to it 
struct Planet {
    uint age;
    string name;
    address addr;
}

// variable of type Planet - see above struct
Planet public universePlanet;

enum State{INHABITED, UNINHABITED,UNKNOWN}
State public universeState;

constructor(uint _age, string memory _name) {
universePlanet.age = _age;
universePlanet.name = _name;
universePlanet.addr = msg.sender;
}

function changePlanet(uint _age, string memory _name, address _addr) public {
if (universeState == State.INHABITED) {
  Planet memory newPlanet = Planet({
    age: _age,
    name: _name,
    addr: _addr
  });
  universePlanet = newPlanet;  
} 

}

}