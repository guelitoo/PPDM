let idade = 25;

if (true) {
    var idade = 30;
    console.log("Dentro do bloco:", idade); // Dentro do bloco: 30
}

console.log("Fora do bloco:", idade); // Fora do bloco: 25

// A diferença é que não se pode colocar o "var" dentro do if