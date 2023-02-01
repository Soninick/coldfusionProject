function ValidateForm()
{ 
    alert()
    var inputtxt = document.getElementById("yourPassword").value
    var passw =  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
    if(inputtxt.match(passw)) 
    { 
        
        // document.getElementById("passerror").innerHTML = "hgcvcvy"
        alert('Correct, try another...')
        // return true;
    }
    else
    { 
        alert('Wrong...!')
        // return false;
    }
}


