//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

/*
    El objetivo de este contrato inteligente es crear una lista de acceso
    que van ser capaces de llamar a una función llamada "funcionProtegida"
    para registar a más personas a esta lista.

    Valores por defecto de variables:
        bool: false
        uint: 0
        string: ""
        address: 0x000000000000000000
*/
contract ListaAcceso {

    /*
        direccion de la persona -> estás en lista o no?
        address = dato a consultar
        UN MAPPING NO ES ITERABLE, HACE FALTA CONOCER LA LLAVE
        mapping(KEY => VALUE) llave y valor
        Significa que con una llave podré obtener su valor
    */
    /*
        dirección 1  -> true
        dirección 2  -> falso
        dirección 6000 -> true
    */
    mapping(address => bool) public personasEnLista;


    constructor() {
        // msg.sender siempre es la persona que despliega el contrato
        personasEnLista[msg.sender] = true;
    }

    // mapping(bool => address); true -> direccion1.  y false -> direccion 6000
    /*
        function sumar(a, b) {

        }

    */
    function funcionProtegida(address persona) public {
        //FALTA AÑADIR LA PROTECCION
        // personasEnLista[msg.sender] -> true / false
        if(personasEnLista[msg.sender]) {
            personasEnLista[persona] = true;
        }
    }
}
