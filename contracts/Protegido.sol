//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/*
    Que el contrato sea propiedad
    de la persona que lo ha puesto
    en la blockchain.

    Por lo tanto, quiero que una función
    llamada funcionPublica solo la pueda llamar
    esta persona. (Dirección)

*/

/*
    Contexto:
        cuanto dinero hay en esta transacción?
        quién está creando la transacción? -> msg.sender
        ...
*/

contract Protegido {

    // Cuando el contrato se cree, el "propietario" va a ser el que ha creado la transacción

    // ACCESS CONTROL -> CONTROL DE ACCESO
    address propietario;
    bool public accedido = false;

    constructor() {
        // persona que despliega el smart contract = persona que llama al constructor
        propietario = msg.sender; // la persona que lo ha creado
    }

    // Función publica que tiene que tener un condicional si el que ha creado la transacción es el propietario -> hacer algo

    // La puerta serán las funciones publicas
    function funcionPublica1() public {
        // control de acceso
        funcionPrivada();
    }

    // Vamos a ser llamados desde la función publica
    function funcionPrivada() private {
        // si el propietario es el que llama la función hacer algo, sino no
        if(msg.sender == propietario) {
            accedido = true;
        } else {
            accedido = false;
        }
    }
}
