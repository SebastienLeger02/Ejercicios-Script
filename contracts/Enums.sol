
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract Ejercicio {

    enum Estado { 
        INICIAL, // 0
        EN_PROGRESO, // 1
        FINALIZADO, // 2
        CANCELADO // 3
    }

    Estado estado;

    function setEstado() public {

        estado = Estado.EN_PROGRESO;
    }

    function getEstado() public view returns(uint8) {
        return uint8(estado);
    }



}
