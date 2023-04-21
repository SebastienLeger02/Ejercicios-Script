//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract MappingArray {

    mapping(address => uint256[]) minutosCorridos;

    function registrarDia(uint256 cuantosMinutos) public {

        // Obtener el array de minutos corridos de la persona que llama
        uint256[] storage registoMinutos = minutosCorridos[msg.sender];

        // Al array de minutos corridos de la persona que llama le añado
        // un elemento al array con los minutos que ha corrido hoy
        registoMinutos.push(cuantosMinutos);
        /*
            msg.sender = persona que lo llama
            
            minutosCorridos[msg.sender] = array numeros

            Quiero obtener el array de numeros que corresponde
            a la dirección de la persona que está llamando la función
        */
    }
}