// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;
 
contract Orderbook {

    error NoPropietario();
    error NoHayDinero(uint256 dinero);
    event HayDinero(uint256 dinero);

    address propietario;

    modifier soloPropietario {
        if(msg.sender != propietario) revert NoPropietario();
        _;
    }

    constructor() {
        propietario = msg.sender;
    }

    function daError(uint256 dinero) public soloPropietario {
        if(dinero < 100) revert NoHayDinero(dinero);

        //notificar que ha habido un deposito de X dinero
        emit HayDinero(dinero);
    }
}