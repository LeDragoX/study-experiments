var exit = confirm("Do you wish to exit and go to the Google page?");

alert("Exit value: " + exit);
if (exit == true) {
  window.location = "https://www.google.com";
}
