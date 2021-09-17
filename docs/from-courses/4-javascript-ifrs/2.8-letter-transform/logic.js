function upCase(){
  var str = document.getElementById("text").value;
  document.getElementById("js-content").innerHTML = "Before: " + str + "<br>" ;
  str = str.toUpperCase();
  document.getElementById("js-content").innerHTML += "After: " + str + "<br>" ;

  document.getElementById("text").value = str;
}