// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

/*
getSueldo() -> devolverá el valor de la variable sueldo
puesto() -> cada "hijo" lo implementa a su manera
horario() -> devolverá el valor de la variable hor -> Enum (MAÑANA, TARDE)
estudiosFinalizados() -> devolverá el valor de la variable estudios
*/


abstract contract Trabajador {

    uint256 sueldo;

    enum Horario {
        MANANA,
        TARDE
    }

    Horario hor;

    bool estudios;

    function getSueldo() public view returns(uint256) {
        return sueldo;
    }

    function setSueldo(uint256 _sueldo) public {
        sueldo = _sueldo;
    }

    function puesto() public view virtual returns(string memory);


    function getHorario() public view returns(Horario) {
        return hor;
    }

    function setHorario(Horario _hor) public {
        hor = _hor;
    }


    function setEstudios(bool _estudios) public {
        estudios = _estudios;
    }

    function getEstudios() public view returns(bool) {
        return estudios;
    }

}


contract Developer is Trabajador {
    
    function puesto() public pure override returns(string memory) {
        return "Desarrollador Blockchain";
    }
}

contract Marketing is Trabajador {
    
    function puesto() public pure override returns(string memory) {
        return "Publicidad";
    }
}

contract Ventas is Trabajador {
    
    function puesto() public pure override returns(string memory) {
        return "Maximo Vendedor";
    }
}


