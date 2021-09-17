var counter = 1;
var limit   = 10;

while (counter <= limit) {
    document.getElementById("js-content").innerHTML += "(" + counter + "/" + limit + ") Looping " + "<br>";
    counter += 1;
}