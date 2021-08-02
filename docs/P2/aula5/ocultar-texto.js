function load() {
  document.getElementById("enlace_1").addEventListener("click", ocultar);
  document.getElementById("enlace_2").addEventListener("click", ocultar2);
  document.getElementById("enlace_3").addEventListener("click", ocultar3);
}

function ocultar() {
  txt = document.getElementById('conteudo_1');
  enlace = document.getElementById('enlace_1');

  txt.style.display = conteudo_1.style.display === 'none' ? '' : 'none';

  if (enlace.textContent == 'Ocultar Conteúdo') {
    enlace.textContent = 'Mostrar Conteúdo';
  }else {
    enlace.textContent = 'Ocultar Conteúdo';
  }
}

function ocultar2() {
  txt = document.getElementById('conteudo_2');
  enlace = document.getElementById('enlace_2');

  txt.style.display = conteudo_2.style.display === 'none' ? '' : 'none';

  if (enlace.textContent == 'Ocultar Conteúdo') {
    enlace.textContent = 'Mostrar Conteúdo';
  }else {
    enlace.textContent = 'Ocultar Conteúdo';
  }
}

function ocultar3() {
  txt = document.getElementById('conteudo_3');
  enlace = document.getElementById('enlace_3');

  txt.style.display = conteudo_3.style.display === 'none' ? '' : 'none';

  if (enlace.textContent == 'Ocultar Conteúdo') {
    enlace.textContent = 'Mostrar Conteúdo';
  }else {
    enlace.textContent = 'Ocultar Conteúdo';
  }
}
