// Ejercicio Array - Semana 2

// Ejercicio 1
/*
let numeros = [1,2,3,4,5];
let indice = 0;

while(indice < 5) {

    console.log("Valore: ", numeros[indice]);
    console.log("Indice: ", indice)
    console.log("------ Bucle While--------");
    indice = indice + 1;
} 

for (let indiceFor = 0; indiceFor < 5; indiceFor++) {
    console.log("Valor: " , numeros[indiceFor]);
    console.log("Indice:" , indiceFor);
    console.log("------ Bucle For --------");
}


// Ejercicio 2


let listaNombres = [];
let indice = 0;
let nombre = "";

while (indice < 5) {
    nombre = prompt();
    listaNombres.push(nombre);
    indice = indice + 1;
    console.log(listaNombres);
}

listaNombres[3] = "Pepito"; 
console.log(listaNombres);

*/
//Ejercicio 3

let temas = ["mates", "lengua", "programacion", "ingles", "naturales", "quimica"];
let notas = [3,9,10,7,5,6];
let indice = 0;
let valueTotal = temas.length;
 
while(indice < valueTotal) {

    if (notas[indice] < 5) {
        console.log(temas[indice], " es Suspenso, con ", notas[indice], "de nota.");
    } 
    else if (notas[indice] < 7 ) {
        console.log(temas[indice], " es Bien, con ", notas[indice], "de nota.");
    }
    else if (notas[indice] < 9 ) {
        console.log(temas[indice], " es Muy Bien, con ", notas[indice], "de nota.");
    }
    else {
        console.log(temas[indice], " es Excelente, con ", notas[indice], "de nota.");
    }

    indice = indice + 1;
}


