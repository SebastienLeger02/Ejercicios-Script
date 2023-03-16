//----------- Ejercicio 1

function sumaPares(numero) {
    let suma = 0;

    for (let i = 0; i <= numero; i = i + 2) {

        suma = suma + i;
        console.log("+", i);
    }
    return console.log("=", suma);
}
sumaPares(10);

//----------- Ejercicio 2

function areaTriangulo(base, altura) {
    calculoAreaTriangulo = (base * altura) / 2;

    return console.log(calculoAreaTriangulo);
}
areaTriangulo(5, 8);

//----------- Ejercicio 3

function factorial(numero) {
    let calculoFactorial = 1;

    for (let i = 1; i <= numero; i++) {
        
        calculoFactorial = calculoFactorial * i;
    }
    console.log(calculoFactorial);
    return calculoFactorial;

}
factorial(5);
