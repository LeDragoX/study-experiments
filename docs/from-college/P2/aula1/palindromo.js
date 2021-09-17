function Palindromo() {
  var palavra = prompt("Digite aqui:");
  var pt1 = [];
  var pt2 = [];

  for (var i = 0; i < palavra.length; i++) {
    pt1 += palavra[i]; //pt1[inicio até o fim] recebe palavra[inicio até o fim]
    pt2 += palavra[palavra.length - 1 - i]; //pt2[fim até o inicio] recebe palavra[inicio até o fim]

    console.log("pt1: " + pt1);
    console.log("pt2: " + pt2);
  }
  alert("Palavra normal: " + pt1 + "\nPalavra Invertida: " + pt2);
  if (pt1 == pt2) {
    alert("A palavra inserida é Palindroma.");
  } else {
    alert("A palavra inserida não é Palindroma.");
  }
}
