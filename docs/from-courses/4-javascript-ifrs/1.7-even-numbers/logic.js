var counter = 1;
var limit = 1000;
var sortNum = 50;

document.getElementById("js-content").innerHTML +=
  "<b> Even numbers until " + limit + ": </b><br>";

while (counter <= limit) {
  if (counter % 2 == 0) {
    document.getElementById("js-content").innerHTML += counter + ", ";
  }

  if (counter % sortNum == 0) {
    document.getElementById("js-content").innerHTML += "<br>";
  }
  counter += 1;
}
