
// Exercice ThemarAcademy
// --------------------------


// VARIABLE Y CONDICIONES


console.log("Exercicio 1");
console.log("----");  
  let a = 10;
  let b = 20;


  let ayuda = a;


  a = b;
  b = ayuda;


  console.log(a);
  console.log(b);




  let c = 10;
  let d = 20;


  if(c == 10 && d == 20) {
  c = 20
  d = 10;
  } else {};


  console.log(a);
  console.log(b);


console.log("");
console.log("Exercicio 2:");
console.log("----");


  let bitcoin = 100000;
  let ethereum = 24000;
  let matic = 15;
  let bnb = 1000;


  let cartera = 25000;


  if (bitcoin <= cartera) {
  console.log("Puedo comprar la crypto Bitcoin.");
  }
  if (ethereum <= cartera) {
  console.log("Puedo comprar la crypto Ethereum.");
  }
  if (matic  <= cartera) {
  console.log("Puedo comprar la crypto Matic.");
  }
  if (bnb  <= cartera) {
  console.log("Puedo comprar la crypto Bnb.");
  };


console.log("");
console.log("Exercicio 3:");
console.log("----");


let mates = 4;
let lengua = 8;
let programacion = 10;
let ingles = 9;
let naturales = 6;
let quimica = 5;


if (mates < 5) {
    console.log("mates es Suspenso");
} else if (mates === 5 || mates === 6) {
    console.log("mates es Bien");
} else if (mates === 7 || mates === 8) {
    console.log("mates es Muy Bien");
} else if (mates === 9 || mates === 10) {
    console.log("mates es Excelente");
}


if (lengua < 5) {
    console.log("lengua es Suspenso");
} else if (lengua === 5 || lengua === 6) {
    console.log("lengua es Bien");
} else if (lengua === 7 || lengua === 8) {
    console.log("lengua es Muy Bien");
} else if (lengua === 9 || lengua === 10) {
    console.log("lengua es Excelente");
}


if (programacion < 5) {
    console.log("programacion es Suspenso");
} else if (programacion === 5 || programacion === 6) {
    console.log("programacion es Bien");
} else if (programacion === 7 || programacion === 8) {
    console.log("programacion es Muy Bien");
} else if (programacion === 9 || programacion === 10) {
    console.log("programacion es Excelente");
}


if (ingles < 5) {
    console.log("ingles es Suspenso");
} else if (ingles === 5 || ingles === 6) {
    console.log("ingles es Bien");
} else if (ingles === 7 || ingles === 8) {
    console.log("ingles es Muy Bien");
} else if (ingles === 9 || ingles === 10) {
    console.log("ingles es Excelente");
}


if (naturales < 5) {
    console.log("naturales es Suspenso");
} else if (naturales === 5 || naturales === 6) {
    console.log("naturales es Bien");
} else if (naturales === 7 || naturales === 8) {
    console.log("naturales es Muy Bien");
} else if (naturales === 9 || naturales === 10) {
    console.log("naturales es Excelente");
}


if (quimica < 5) {
    console.log("quimica es Suspenso");
} else if (quimica === 5 || quimica === 6) {
    console.log("quimica es Bien");
} else if (quimica === 7 || quimica === 8) {
    console.log("quimica es Muy Bien");
} else if (quimica === 9 || quimica === 10) {
    console.log("quimica es Excelente");
};


let sumaTotal = 0;
while(sumaTotal <= 10) {
  console.log(sumaTotal);
  sumaTotal = sumaTotal + 1;
};

