// $(function(){
    function validate(){
        clearError();
        var fname = $("#First_Name").val();
        var lname = $("#Last_Name").val();
        var email = $("#Email_Address").val();
        var mNumber = $("#mobile").val();
        var dob = $("#txtDOB").val();
        var rd = $("input[name='gridRadios']").is(":checked");
        var selects = $("#select").val();
        // var checkbox = $("input[name = 'ridCheck1']").is(":checked");
        var checkbox = $("#gridCheck1").is(":checked");
        var count = 0;
        if (fname =="" ) {
            
            $("#fNameErr").html("fill first name")
            count++;
        } 
        if (lname =="" ) {
            
            $("#lNameErr").html("fill last name")
            count++;
        } 
        if (email =="" ) {
            
            $("#emailErr").html("fill email name")
            count++;
        } 
        if (mNumber =="" ) {
            
            $("#mnumber").html("fill mobile number ")
            count++;
            
        }
        if (dob =="" ) {
            $("#setage").html("fill age")
            count++;
        }   
        
        if (rd == false){
            $("#radio1").html( "select any one") 
            count++; 
        }
        if (selects == false) {
            $("#select1").html( "select any one")  
            count++;
        } 
        if (checkbox == false){
            
            $("#box").html("select any one")   
            count++;
        }
        
        console.log(count);
        if(count>0){
            return false;
        }
        else{
            return true;
        }
    };

    $(".Date").change(function()
    { 
        var userDateinput = $("#txtDOB").val();
        console.log(userDateinput);
        
        // convert user input value into date object
        var birthDate = new Date(userDateinput);
         console.log(" birthDate"+ birthDate);
        
        // get difference from current date;
        var difference=Date.now() - birthDate.getTime(); 
             
        var  ageDate = new Date(difference); 
        var calculatedAge =   Math.abs(ageDate.getUTCFullYear() - 1970);    
            $("#setage").html(calculatedAge);
     })

      
    // $("#filename").on("change", function(e){
    $(document).on("change", "#filename", function(e){
       
        var fileSize = e.target.files[0].size/1024;
        var filepath = URL.createObjectURL( e.target.files[0]);
        
        if (fileSize > 1024) {
            $(this).val("");
            $("#img1").html("upload image size less then 1mb")  
            // $(file).val(''); //for clearing with Jquery
        } else {
            // Proceed further
            $("#output").attr("src", filepath);
            $("#img1").html("")  
        }
            
        
    });
     
    function clearError(){
        
        $("#fNameErr, #lNameErr ,#mnumber ,#setage ,#radio1 ,#select1 ,#box").html("")
    }