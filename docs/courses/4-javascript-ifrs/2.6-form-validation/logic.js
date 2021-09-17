function verifyForm(){
    if (document.getElementById("name").value == "") {

      alert("Fill the 'name'");
      document.getElementById("name").style.borderColor     = "red";
      document.getElementById("name").style.backgroundColor = "#ffe5e5";
      document.getElementById("name").focus();
      return false;
      
    }
    return true;
}