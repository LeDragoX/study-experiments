// FORM

function submitted() {
  document.getElementById("js-content").innerHTML += "Submit<br>";
  return false;
}

function resetted() {
  document.getElementById("js-content").innerHTML += "Reset<br>";
}

// INPUT

function imOut() {
  document.getElementById("js-content").innerHTML += "Blur<br>";
}

function iChanged() {
  document.getElementById("js-content").innerHTML += "Change<br>";
}

function imIn() {
  document.getElementById("js-content").innerHTML += "Focus<br>";
}

function iSelected() {
  document.getElementById("js-content").innerHTML += "Select<br>";
}

function keyDown() {
  document.getElementById("js-content").innerHTML += "Key Down<br>";
}

function keyUp() {
  document.getElementById("js-content").innerHTML += "Key Up<br>";
}
