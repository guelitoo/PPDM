function exemplo() {
    if (true) {
        var a = "Var dentro do bloco"; // Escopo de função
        let b = "Let dentro do bloco"; // Escopo de bloco
        const c = "Const dentro do bloco"; // Escopo de bloco
    }
    
    console.log(a); // Funciona (var tem escopo de função)
    
    // console.log(b); // Erro! (let tem escopo de bloco)
    // console.log(c); // Erro! (const tem escopo de bloco)
}

exemplo();

var x = 10;
var x = 20; // Funciona

let y = 10;
// let y = 20; // Erro! Não pode redeclarar com `let`

console.log(x); // 20
// console.log(y); // Causa erro se a linha acima for descomentada

const PI = 3.1416;
// PI = 3.14; // Erro! Não pode reatribuir `const`
console.log(PI); // 3.1416
