let prompt = require('prompt-sync')();

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

if(sumaNumero%2 == 0 ) {
    console.log( "La suma de los numeros ",primeroNumero, " y ", segundoNumero, " hacen ", sumaNumero, " y es par.");
}else {
    console.log( "La suma de los numeros ",primeroNumero, " y ", segundoNumero, " hacen ", sumaNumero, " y es impar.");
};
*/

// Ejercicio 3

let numero = parseInt(prompt("Cual es tu numero?"));
let primo = true;

for (i=2; i<numero; i++) {
    if(numero% i === 0) {
        primo = false;
    }
}

if (primo === true) {
    console.log(numero, " es un numero primo");
} else  {
    console.log(numero, " no es un numero primo");
}

