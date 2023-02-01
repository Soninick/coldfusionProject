function validate() {
    //  document.getElementById("submition").innerHTML 
    var fname = document.getElementById("First_Name").value;
    var lname = document.getElementById("Last_Name").value;
    var email = document.getElementById("Email_Address").value;
    var mNumber = document.getElementById("mobile").value;
    var dob = document.getElementById("txtDOB").value;
    var rd = document.getElementsByName("gridRadios");
    var selects = document.getElementById("select");
    var checkbox = document.querySelector("#gridCheck1");
    // var checkbox = document.getElementById("gridCheck1")
    // var cd = document.querySelector("gridCheck1");
    // console.log(checkbox.checked)

   

    if (fname =="" ) {
        document.getElementById("fNameErr").innerHTML = "fill first name";
        //    return false;
    }
    if (lname =="" ) {
        document.getElementById("lNameErr").innerHTML = "fill last name"
        //    return false;
    }
    if (email =="" ) {
        document.getElementById("emailErr").innerHTML = "fill Email Address "
    }
    if (mNumber =="" ) {
        document.getElementById("mnumber").innerHTML = "fill mobile number "
    }
    if (dob =="" ) {
        document.getElementById("setage").innerHTML = "fill age  "
    }
    if (rd[0].checked == false && rd [1].checked == false){
        document.getElementById("redio1").innerHTML = "select any one" 
    }
    if (selects.value =="") {
        document.getElementById("select1").innerHTML = "select any one" 
    }
    if (checkbox.checked == false){
        document.getElementById("box").innerHTML = "select any one" 
    }
    return false;
    
}    
function getAge() 
{
   
    var userDateinput = document.getElementById("txtDOB").value;  
    console.log(userDateinput);
    
    // convert user input value into date object
    var birthDate = new Date(userDateinput);
     console.log(" birthDate"+ birthDate);
    
    // get difference from current date;
    var difference=Date.now() - birthDate.getTime(); 
         
    var  ageDate = new Date(difference); 
    var calculatedAge=   Math.abs(ageDate.getUTCFullYear() - 1970);    
    document.getElementById("setage").innerHTML = calculatedAge;
}

function validateSize(event) {
    var input = document.getElementById("filename");
    var file = input.files[0];
    var fileSize = file.size/1024;
    var filepath = window.URL.createObjectURL(file)
    
    if (fileSize > 1024) {
        input.value = "";
        document.getElementById("img1").innerHTML = "upload image size less then 1mb"
        // $(file).val(''); //for clearing with Jquery
    } else {
        // Proceed further
        document.getElementById("output").src = filepath
    }
  
  }
   

   




