<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<html lang="en">
<head>
  <title>Cyberia Systems - New User</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="CyberiaSystems.css">
</head>
<body onload="buttonEnable()">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Index"><img class="img-responsive" src="CyberiaICON.png" alt="Cyberia Systems" height= "25" width="25"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Index">Home</a></li>
        <li><a href="http://cyberia-systems.com/">About</a></li>

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="NewUser"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Index"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">

    <div class="col-sm-8 text-left"> 
     <div align="center">
 
      <h1>New User INDEX PAGE</h1>
      <hr>
      
      

<form name="actionForm" action="NewUserAdded" method ="POST" onsubmit="return validateForm()">
	<input type="hidden" name="cNumTB" value="0">
	

		
		
		<div class="form-group">
		
		<input type='text' name='NameTB' id='NameTB' value='' class='form-control input-lg' placeholder="NAME"  />

	</div>
	
	 <div class="form-group">
		
		<input type='text' name='PhoneTB' id='PhoneTB'  value='' class='form-control input-lg' placeholder="PHONE NUMBER" />
	</div>
	
	
		<div class="form-group">

		<input type='email' name='EmailTB' id="EmailTB"  value='' class='form-control input-lg' placeholder="EMAIL" />

	</div>
	
	<input type="email" style="display:none">
	<input type="password" style="display:none">
	 
	
	
	
	
	
	


    <script>
    
    function statusBar(){
    	
        var img1 = document.getElementById("img1"),
        img2 = document.getElementById("img2");
    	
       // img2.style.display = "none";
       // img1.style.display = "none";
    	
       
        //document.getElementById("img1").style.visibility = "hidden";
        //document.getElementById("img2").style.visibility = "hidden";
    }
    
    
    function buttonEnable(){
    
    	
        var img1 = document.getElementById("img1"),
        img2 = document.getElementById("img2");
    	
    	
    document.getElementById("myBtn").disabled = true;
    
    }

    </script>

	
	
	<script>
function myFunction() {
   
	var x = document.getElementById("PasswordTB").value;
	var y = document.getElementById("PasswordTB").value.length;
	
	var n = document.getElementById("NameTB").value.length;
	var p = document.getElementById("PhoneTB").value.length;
	var e = document.getElementById("EmailTB").value.length;
	
	var sb = 0;
	
	
	
	 var a=document.getElementById("PasswordTB").value
	    var b=0
	    var c=0
	    var d=0;
	    for(i=0;i<a.length;i++)
	    {
	        if(a[i]==a[i].toUpperCase())
	            b++;
	        if(a[i]==a[i].toLowerCase())
	            c++;
	        if(!isNaN(a[i]))
	            d++;
	    }
	    if(a=="")
	    {
	    	document.getElementById("demo").innerHTML = "Password must be at least 8 characters long with one upper case letter, lower case letter and number.";
			
	    	document.getElementById("img1").style.visibility = "hidden";
			
			document.getElementById("img2").style.visibility = "hidden";
			
			document.getElementById("img3").style.visibility = "hidden";
	    	
	       sb = 0;
	    }
	    else if(a)
	    {

	        
	       // document.getElementById("demo").innerHTML = "capital: " + b;
	      //  document.getElementById("demo").innerHTML = "normal: " + c;
	       // document.getElementById("demo").innerHTML = "number: " + d;
	        
	        
	    }   
	
	 if (y>0 && y<6){
		 
		 document.getElementById("demo").innerHTML = "Weak";
		 
			document.getElementById("img1").style.visibility = "visible";
			
			document.getElementById("img2").style.visibility = "hidden";
			
			document.getElementById("img3").style.visibility = "hidden";
		 
			document.getElementById("myBtn").disabled = true;
	 } 
	 
	 
	 
	 if (y>5 && y<8 || y>5 && b<1 || y>5 && c<1 || y>5 && d<1 ){
		 
		 	document.getElementById("demo").innerHTML = "Medium";
		 
			document.getElementById("img1").style.visibility = "visible";
			
			document.getElementById("img2").style.visibility = "visible";
			
			document.getElementById("img3").style.visibility = "hidden";
		 
			document.getElementById("myBtn").disabled = true;
	 } 
	 
	 
	 
	    
	if (b>0 && c>0 && d>0 && y>7 ) {
		
		document.getElementById("demo").innerHTML = "Good";
		
		document.getElementById("img1").style.visibility = "visible";
		
		document.getElementById("img2").style.visibility = "visible";
		
		document.getElementById("img3").style.visibility = "visible";
				
			
			document.getElementById("myBtn").disabled = false;
		
		
		
	}
	
	
	

	
	
	
	
	//if (y > 5) {
	

	//document.getElementById("demo").innerHTML = "You selected: " + x + y;
	//}
	

	

	
	
	
	
}
</script>
	
	
		<div class="form-group">
		


		
	<p align="left" id="demo">Password must be at least 8 characters long with one number, upper case letter, and lower case letter.</p>
	
<table align="left" >
	<tr>
	<td>
	
	<img  align="left" style="visibility:hidden" id="img1" src="StatusBar1.png" />
    	</td>
	<td>
    
    
    <img  align="left" style="visibility:hidden" id="img2" src="StatusBar2.png" />
	
	
	
	</td>
	<td>
	
		 
	 
	  <img  align="left" style="visibility:hidden" id="img3" src="StatusBar3.png" />
	
	</td>
	</tr>

	
	
	</table>
	
	
	<p>&nbsp; </p>	
	
	
		 
		<input type='password' name='PasswordTB' id="PasswordTB"  value='' class='form-control input-lg' placeholder="PASSWORD" onKeyUp="myFunction()"/>
	</div>
	




<p>
  <span style="font-size:0.8em">
  
  By clicking Create Account, you agree to our <a href="UserTerms.html">Terms</a> and that you have read our <a href="Privacy.html">Data Policy</a>, including our Cookie Use.

</span></p>



<p>
<input disabled id="myBtn" class="btn btn-success btn-lg" type="submit" value="Create Account">&nbsp; &nbsp; &nbsp;
<a href="Index" class="btn btn-success btn-lg" role="button">Back</a>
 </p>
 </form>
  







   
   
   
        <img class="img-responsive" src="CyberiaLogo.png" alt="Cyberia Systems" > 
   
   





   </div>

   
   
   
   
   

   
   
   
    </div>
    
  </div>
</div>

</div>

<footer class=" footer footer-background container-fluid text-center">
<p>www.cyberia-systems.com</p>
</footer>

</body>
</html>