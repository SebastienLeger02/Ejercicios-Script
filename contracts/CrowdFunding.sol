/**
    Crea una plataforma de Crowdfunding. Esta plataforma deberá tener:
    - Una función que permita añadir proyectos que necesiten fondos. Las 
    características de un proyecto son:
        - Dueño del proyecto (siempre será el creador del proyecto)
        - Cantidad necesaria de recaudación
        - Estado del proyecto

    Existen cuatro estados para un Proyecto:
    - CREADO: El proyecto acaba de ser creado
    - EN_PROCESO: Se ha invertido dinero en el proyecto
    - FINALIZADO: Se ha llegado al objetivo de recaudación
    - CANCELADO: Se ha cancelado el proyecto

    El contrato deberá llevar la cuenta de cada Proyecto añadido mediante un contador incremental.

    - Una función que permita cancelar proyectos. Solo el dueño de un proyecto podrá cancelarlo
    - Una función que permita añadir fondos a un proyecto. Si la fecha
    actual supera la fecha maxima para añadir fondos, no se podrá añadir.
    
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

contract CrowdFunding {

    enum Estado {
        CREADO, //0
        EN_PROCESO, // 1
        FINALIZADO, // 2
        CANCELADO // 3
    }

    struct Proyecto {
        address creador;
        uint256 cantidadObjetivo;
        uint256 cantidadRecaudada;
        Estado estado;
    }

    mapping(uint256 => Proyecto) public proyectos;
    uint256 public contador;

    function addProyecto(uint256 cantidadObjetivo) public {
        proyectos[contador].creador = msg.sender;
        proyectos[contador].cantidadObjetivo = cantidadObjetivo;

        contador++;

        // NO HACE FALTA PONERLO, YA ESTA EN 0 POR DEFECTO
        // proyectos[contador].estado = Estado.CREADO;
        // proyectos[contador].cantidadRecaudada = 0;
    }

    function cancelaProyecto(uint256 identificador) public {
        if(proyectos[identificador].creador == msg.sender) {
            proyectos[identificador].estado = Estado.CANCELADO;
        }
    }

    function addFondos(uint256 identificador, uint256 cantidad) public {
        proyectos[identificador].cantidadRecaudada += cantidad;
        // ES LO MISMO
        // proyectos[identificador].cantidadRecaudada = proyectos[identificador].cantidadRecaudada + cantidad;


        
        if(proyectos[identificador].estado == Estado.CREADO){
            proyectos[identificador].estado = Estado.EN_PROCESO;
        }

    }
}
