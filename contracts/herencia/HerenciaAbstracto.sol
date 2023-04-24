// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;


abstract contract Animal {

    string public tipo; //terrestre, volador, acuatico


    function dimeTipo() public view virtual returns(string memory) {
        return tipo;
    }

    function setTipo(string memory _tipo) public {
        tipo = _tipo;
    }

    function hazSonido() public virtual returns(string memory);

 }


contract Perro is Animal {

    function hazSonido() public pure override returns(string memory){
        return "guau";
    }
}

contract Gato is Animal {
    
    function hazSonido() public pure override returns(string memory){
        return "miau";
    }
}

contract Pajaro is Animal {

    function hazSonido() public pure override returns(string memory){
        return "brr";
    }

}

contract Ornitorrinco is Animal {


    string sonidoOrnitorrinco = "te maldigo";

    function dimeTipo() public pure override returns(string memory) {
        return "raro";
    }
    function hazSonido() public view override returns(string memory){
        return sonidoOrnitorrinco;
    }
}








