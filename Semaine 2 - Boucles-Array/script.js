/* 
--- Ejercicio sobre los bucles 
*/
// Ejercicio n1

let contador = 0;
let lluegoHastaDiez = true;

while (lluegoHastaDiez) {
  if(contador >= 10) {
    lluegoHastaDiez = false;
  }
  console.log(contador);
  contador = contador + 1;
};

for( let contador = 0; contador <= 10; contador++) {
  console.log(contador);
};

// Ejercicio n2

let continua = true;
let respuesta = prompt("Debes escribir un S o N para continuar el script");


if (respuesta === "S" || respuesta === "s" || respuesta === "n" || respuesta === "N") {
    
    while (continua) {
        if (respuesta === "n" || respuesta === "N") {
            continua = false;
            alert("Script terminado.");
            console.log("Script terminado.");
        } else if (respuesta === "S" || respuesta === "s") {
            console.log("Continuamos");
            respuesta = prompt("Continuamos");
        } else {
            console.log("No es la buena letra");
            respuesta = prompt("No es la buena letra");
        }
    }

} else {
    console.log("Para empezar de nuevo tienes que actualizar la página.");
    
}

// Ejercicio n3

let a = prompt("¿Cuanto dinero quieres ahorrar en total?");
let ahorro = parseInt(a);
// Se puede directamente asi : let a = parseInt( prompt("¿Cuanto dinero quieres ahorrar en total?"));
let cuenta = 0;
let cuentaNoLlena = true;

while (cuentaNoLlena) {
    let b = prompt("¿Cuánto dinero has ahorrado hoy?");
    let sumar = parseInt(b);
    cuenta = cuenta + sumar;

    if (cuenta === ahorro) {
        cuentaNoLlena = false;
        console.log("Felicidades!!");
    }

    console.log("Ahorrado = " + cuenta);
    console.log("Objetivo de ahorro = " + ahorro);
}
function maFunction() {}