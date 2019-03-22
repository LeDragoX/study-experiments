function colocarvalor(valor) {
  output = document.getElementById('calc-output');
  if (output.textContent == "0") {
    output.textContent = "";
    output.textContent+= valor.value;
  }else {
  output.textContent+= valor.value;
}
/*
  if (str = output.textContent.substr(-1) == '*' || '/' || '+' || '-') {

  }
*/
}

function limpar() {
  output = document.getElementById('calc-output');
  output.textContent = '0';
}

function calcular() {
  output = document.getElementById('calc-output');
  output.textContent = eval(output.textContent);
}
