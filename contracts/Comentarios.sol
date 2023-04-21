//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
/*

Javascript:

    let nombre = "Pep";

    nombre = "Adrià"; string constant TEXT = "abc";

 ✅ ❌

Solidity:
    "Variable dinámica"

    uint256 edad = 18;

    edad = 20; ✅


    "Variables constantes"
        Al crear el contrato, no cambia NUNCA

    string constant nombre = "Pep";

    nombre = "Adrià"; ❌


    "Variables immutables"
        Se puede cambiar en el constructor

    string immutable nombre = "Pep";

    nombre = "Adrià"; ❌


string constant nombre = "Pep";

uint256 immutable edad;

constructor(uint256 numero) {
    edad = numero; ✅ 
    nombre = "Adria";  ❌
}
*/