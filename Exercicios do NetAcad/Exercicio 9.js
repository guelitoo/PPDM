function testeEscopo() {
    var a = 10;
    if (true) {
        let b = 20;
        console.log(a); // ?
        console.log(b); // ?
    }
    console.log(a); // ?
    console.log(b); // ?
}
testeEscopo();

// Irá executar 10, 20, 10 e o campo "b" não definido