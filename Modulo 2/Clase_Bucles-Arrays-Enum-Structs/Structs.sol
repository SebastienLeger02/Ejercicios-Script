// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract Ejercicio2 {

    struct Persona {
        uint256 edad;
        address direccion;
        uint256 telefono;
    }
    
    Persona persona;

    function setPersona(Persona memory _persona) public {
        persona = _persona;
    }

    function setPersona2(uint256 _edad, address _direccion, uint256 _telefono) public {
        persona.edad = _edad;
        persona.direccion = _direccion;
        persona.telefono = _telefono;
    }

    function getPersona() public view returns(Persona memory) {
        return persona;
    }

}
