function calcBmi() {
  document.getElementById("weight").style.borderColor = "#eeeeee";
  document.getElementById("weight").style.backgroundColor = "white";

  document.getElementById("height").style.borderColor = "#eeeeee";
  document.getElementById("height").style.backgroundColor = "white";

  if (document.getElementById("weight").value == "") {
    alert("Fill the 'weight'");
    document.getElementById("weight").style.borderColor = "red";
    document.getElementById("weight").style.backgroundColor = "#ffe5e5";
    document.getElementById("weight").focus();

    return false;
  }

  if (document.getElementById("height").value == "") {
    alert("Fill the 'height'");
    document.getElementById("height").style.borderColor = "red";
    document.getElementById("height").style.backgroundColor = "#ffe5e5";
    document.getElementById("height").focus();

    return false;
  }

  var weight = parseFloat(document.getElementById("weight").value);
  var height = parseFloat(document.getElementById("height").value);
  var result = weight / (height * height);

  document.getElementById("js-content").innerHTML +=
    "Your BMI (EN) / IMC (PT) is: " + result + "<br>";
  return true;
}
