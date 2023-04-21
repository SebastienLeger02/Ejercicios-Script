// const { deepStrictEqual } = require("assert");
// const { parse } = require("path");

let prompt = require("prompt-sync")();

// Ejercicio 1

/*
let numeroPedido = parseInt(prompt("Cual es tu numero?"));

if(numeroPedido%2 == 0 ) {
    console.log( numeroPedido, " es par.");
}else {
    console.log( numeroPedido, " es impar.");
};
*/

// Ejercicio 2
/*
let primeroNumero = parseInt(prompt("Cual es tu primer numero?"));
let segundoNumero = parseInt(prompt("Cual es tu segundo numero?"));
let sumaNumero = primeroNumero + segundoNumero;

if(sumaNumero % 2 == 0 ) {
    console.log( "La suma de los numeros ",primeroNumero, " y ", segundoNumero, " hacen ", sumaNumero, " y es par.");
}else {
    console.log( "La suma de los numeros ",primeroNumero, " y ", segundoNumero, " hacen ", sumaNumero, " y es impar.");
};
*/
/*
// Ejercicio 3

let numero = parseInt(prompt("Cual es tu numero?"));
let primo = true;

for (i=2; i<numero; i++) {
    if(numero % i === 0) {
        primo = false;
    }
}

if (primo === true) {
    console.log(numero, " es un numero primo");
} else  {
    console.log(numero, " no es un numero primo");
}
*/

// Ejercicio 4
/*
Pedir al usario un numero
Pedir al usario un otro numero 

Hacer una condicion que permite de decir sur numero1 es mas grande que numero2
y una otra para pedir si numero2 es mas grande que numero1.
*/
/*
let numero01 = parseInt(prompt("Cual es tu primero numero?"));
let numero02 = parseInt(prompt("Cual es tu segundo numero?"));

function mayorOMenor (n1, n2) {
    if(n1 < n2) {
        console.log(n2, "es mayor que", n1);
    } else if(n2 < n1) {
        console.log(n1, " es mayor que", n2);
    }
}

mayorOMenor(numero01,numero02);
*/

// Ejercicio 5
/*
Pedir al usario una letra
*/
/*
let letra = true;
while (letra) {
  let letraPedido = prompt("Escribe una letra:");
  var letraRGEX = /^[a-zA-Z]{1}$/;
  var letraResult = letraRGEX.test(letraPedido);

  if (letraResult) {
    if (
      letraPedido ==  "a" ||
      letraPedido ==  "A" ||
      letraPedido ==  "e" ||
      letraPedido ==  "E" ||
      letraPedido ==  "i" ||
      letraPedido ==  "I" ||
      letraPedido ==  "o" ||
      letraPedido ==  "O" ||
      letraPedido ==  "u" ||
      letraPedido ==  "U"
    ) {
      console.log("La letra", letraPedido, "es un vocal.");
    } else {
      console.log("La letra", letraPedido, "no es un vocal.");
    }
    letra = false;
  }
}
*/
// Ejercicio 6
/*
Pedir al usario un numero entre 1 y 7 y
muestra a qué dia de la semana corresponde
*/
/*
let numero = true;
while (numero) {
  let diaSemana = parseInt(prompt("Escribe un numero entre 1 y 7:"));

  if (diaSemana > 0 && diaSemana <= 7) {
    numero = false;
    if (diaSemana == 1) {
      console.log("El dia 1 de la semana es Lunes!");
    } else if (diaSemana == 2) {
      console.log("El dia 2 de la semana es Martes!");
    } else if (diaSemana == 3) {
      console.log("El dia 3 de la semana es Miercoles!");
    } else if (diaSemana == 4) {
      console.log("El dia 4 de la semana es Jueves!");
    } else if (diaSemana == 5) {
      console.log("El dia 5 de la semana es Viernes!");
    } else if (diaSemana == 6) {
      console.log("El dia 6 de la semana es Sabado!");
    } else {
      console.log("El dia 7 de la semana es Domingo!");
    }
  }
}
*/

let diaArray = [
  "Lunes",
  "Martes",
  "Miercoles",
  "Jueves",
  "Viernes",
  "Sabado",
  "Domingo",
];
let numero = true;
while (numero) {
  let diaSemana = parseInt(prompt("Escribe un numero entre 1 y 7:"));

  if (diaSemana > 0 && diaSemana <= 7) {
    diaSemana--;
    dia = diaArray[diaSemana];
    console.log(dia);

    numero = false;
  }
}
