// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;
 
/*
    calldata -> Solamente de lectura - Vale barato, esta bien para los valores dentro function
    memory -> leer y escribir - vale normal de gas , esta bien para los valores dentro function - Usa como la RAM
    storage -> leer y escribir - Vale muscho gas, porque esta enscrito en la blockchain - Usa como la memoria

    Se puede usar para los tipos_
        - string
        - Array[]
        - struct

    Hacer un smart contract que permita "depositar", permita saber que porcentaje
    del banco tienes, y podrás "retirar" el dinero que has depositado.
 
    Además, queremos tener un historial de todos los depósitos, sabiendo la persona y dinero
    que han puesto. Lo mismo con los retiros.
 
    POOL
*/
 
contract Banco {
 
 
    /*
        Una estructura a la que llamaremos Registro. El nombre, la cantidad, si es entrada o salida
 
        Nombre
        Dinero
        Deposito / Retiro (0/1) -> podría llegar a ser un enum
    */
    struct Registro {
        string nombre;
        uint256 cantidad;
        bool tipo; // false -> ingreso; true -> retiro
    }
 
    // Una variable de dinero total
    uint256 public dineroTotal;
 
    // Un array de registros con todo el historial
    Registro[] public registros;
 
 
    uint256 recompensasARepartir = 0;
 
    // Manera de saber el balance de un usuario
    // address -> uint256 (persona -> cantidad);
    mapping(address => uint256) public balances;
 
    // funcion de depositar
    function depositar(uint256 dinero, string calldata nombre) public {
        dineroTotal += dinero;
        balances[msg.sender] += dinero;
 
        recompensasARepartir += dinero * 2;
 
        Registro memory registro;
 
        registro.nombre = nombre;
        registro.cantidad = dinero;
        registro.tipo = false;
 
        registros.push(registro);
    }
 
    // funcion de retirar
    function retirar(uint256 dinero, string calldata nombre) public {
        if(balances[msg.sender] >= dinero) {
 
            // += -> dinero = dinero + valor;
            // -= -> dinero = dinero - valor;
 
            dineroTotal -= dinero;
            balances[msg.sender] -= dinero;
 
            // msg.sender le enviamos (balances[msg.sender] * 100) / dineroTotal * recompensasARepartir
            Registro memory registro;
 
            registro.nombre = nombre;
            registro.cantidad = dinero;
            registro.tipo = true;
 
            registros.push(registro);
        }
    }
 
    // funcion para decir cuanto % es nuestro del banco
 
    function share() public view returns(uint256) {
        return (balances[msg.sender] * 100) / dineroTotal;
    }
 
    // repartir recompensas (APY / APR)
}