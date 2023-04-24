// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;


contract Animal {

    string public tipo; //terrestre, volador, acuatico


    function dimeTipo() public view virtual returns(string memory) {
        return tipo;
    }

    function setTipo(string memory _tipo) public {
        tipo = _tipo;
    }

 }


contract Perro is Animal {

    
}

contract Gato is Animal {
    

}

contract Pajaro is Animal {


}

contract Ornitorrinco is Animal {

    function dimeTipo() public pure override returns(string memory) {
        return "raro";
    }
}








