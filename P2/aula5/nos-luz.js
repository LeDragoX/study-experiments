function load() {
  document.getElementById("luz").addEventListener("click", luz);
  document.getElementById("item").addEventListener("submit", addItem)
}

function addItem(e) {
  e.preventDefault();
  li = document.createElement('li');
  li.appendChild(document.createTextNode(document.getElementById("texto").value));
  document.getElementById("lista").appendChild(li);
}
var acesa = false;
function luz() {
  img = document.getElementById("luz");
  if (!acesa) {
    acesa = true;
    img.src = "lampada-on.gif";
  } else {
    acesa = false;
    img.src = "lampada-off.gif";
  }
}
