//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract ListaAccesoArray {

    address[] personas;

    /*  
        function suma(a,b) {
            return a + b;
        }
    */

    constructor() {
        personas.push(msg.sender);
    }

    function funcionProtegida(address persona) public {
        if(estaEnLista(msg.sender)) {
            personas.push(persona);
        }
    }

    // Dada una dirección me devuelva true o false dependiendo de si está en la 
    // lista o no
    function estaEnLista(address buscado) private view returns(bool) {
        bool encontrado = false;

        /*
            for(let i = 0; i < x; i++)
            AL ITERAR ARRAY SIEMPRE USAREMOS UINT256

            El caso de uso más importante de un bucle for
            es iterar por todos los elementos de un array
                uint256 i = 0; i < personas.length; i++
        */
        // i = contador
        /*
        for(uint256 i = 0; i < personas.length; i++) {
            if(personas[i] == buscado) {
                encontrado = true;
            }
        }

        return encontrado;
        */

        for(uint256 i = 0; i < personas.length; i++) {
            if(personas[i] == buscado)  {
                encontrado = true;
            }
        }
        
        return encontrado;
    }
}
