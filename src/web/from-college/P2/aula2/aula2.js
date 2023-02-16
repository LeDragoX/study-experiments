function Fatorial() {
  var fat = prompt("Digite um numero para calcular o Fatorial");
  var num = 1;
  for (var i = 1; i < fat; i++) {
    num *= i + 1;
    alert("Fatorial = " + num);
    console.log("Fat[" + i + "] = " + num);
  }
  return num;
}

function ParImpar() {
  var num = prompt("Digite um numero para verificar se é par ou impar:");
  var cond = num % 2 == 0 ? alert(num + " é par!") : alert(num + " é ímpar!");

  console.log("num = " + num);
  return num;
}

function VerEmail() {
  var palavra = prompt("Digite algo para verificar se é um email:");
  var pattern = /\w@\w+.\w/;
  var cond =
    palavra.search(pattern) == -1
      ? alert("Email Inválido!")
      : alert("Email Válido!");

  console.log("String: " + palavra);
}
