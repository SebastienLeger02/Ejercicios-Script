//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Contrato {

    // let nombre = valor;
    // bool nombre = true;

    /*
        bool        true / false            (verdadero/falso)
        address     0xZZZZZZZZZZZZZZZZZ     (dirección) 
        string      Hola soy Pep            (cadena de texto)

        uint        25                      (numero entero positivo)

        uint8 es más pequeño y barato que uint256
    */

    // Variables globales
    bool variableBooleana = true;
    address direccionPep = 0x79082727046F753D3F465AEd26c75c6379D58471; //0x79082727046F753D3F465AEd26c75c6379D58471;
    string nombrePep = "Pep";
    uint256 numeroFavoritoPep = 12390129309120930192930190390129391020;

    // Un array de numeros
    uint8[] dnis = [10,2,3,4,5,6,7];

    // Un array de booleanos
    bool[] encendidos = [true, false, true, false];

    // funcion 1 
    //      creo variable bool estoyEnFuncion = true;

    /*
        Visibilidad de funciones
            - public  (publico)
            - private (privado)
            - ?????
    */ 
    function funcion1() private {
        variableBooleana = false;
    }
}
