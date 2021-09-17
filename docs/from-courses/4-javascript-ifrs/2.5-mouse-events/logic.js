function mOver() {
  document.getElementById("colors").style.backgroundColor = "red";
  document.getElementById("js-content").innerHTML +=
    "[MOUSE OVER] Color = RED<br>";
}

function mDown() {
  document.getElementById("colors").style.backgroundColor = "blue";
  document.getElementById("js-content").innerHTML +=
    "[MOUSE CLICK] Color = BLUE<br>";
}

function mMove() {
  document.getElementById("colors").style.backgroundColor = "green";
  document.getElementById("js-content").innerHTML +=
    "[MOUSE MOVE] Color = GREEN<br>";
}

function mOut() {
  document.getElementById("colors").style.backgroundColor = "yellow";
  document.getElementById("js-content").innerHTML +=
    "[MOUSE OUT] Color = YELLOW<br>";
}

function mUp() {
  document.getElementById("colors").style.backgroundColor = "black";
  document.getElementById("js-content").innerHTML +=
    "[MOUSE UP] Color = BLACK<br>";
}
