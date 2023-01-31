var grade1 = 6.9;
var grade2 = 9.5;
var avg = (grade1 + grade2) / 2;
document.getElementById("js-content").innerHTML =
  "The average between " + grade1 + " and " + grade2 + " is: " + avg;
if (avg >= 7) {
  document.getElementById("js-content").innerHTML += " - Approved!";
} else if (avg < 7) {
  document.getElementById("js-content").innerHTML += " - Disapproved!";
}
