<!DOCTYPE html>
<%@ page import="java.sql.Connection" %>
<%@ page import= "java.sql.DriverManager" %>
<%@ page import=  "java.sql.ResultSet" %>
<%@ page import= "java.sql.Statement" %>
<%@ page import= "java.sql.PreparedStatement" %>
<%@ page import= "java.util.Scanner" %>

<html lang="en">
<head>
  <title>Leasing Add</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  
   
</head>

<style>


fieldset{
float: left;
margin: 110px;
/*border: 2px solid silver;*/
border: 2px solid #2F4F4F;
padding: 4px;    
border-radius: 16px;
margin-left: 20px;
margin-top: 5px;
/*margin-right: 20px;*/

}


.conttestmainpage{
float: left;
/*margin-left: 400px;*/
margin-right: 200px;
}

legend{
/*padding: 2px;*/
text-color:#008B8B;
font:bold 20px/30px Georgia, serif;
}

/*
.notificationsmail{
font:bold 13px/20px Georgia, serif;
color:#2F4F4F;
}
*/


.col-sm-2{
    /*border: 1px solid black;*/
    height: 50%;
}

@media (max-width: 767px) {
    .col-sm-4 {
        min-height: 33.3333333%;
        height: 33.3333333%;
    } 
}

#spacemainanddet{
padding : 50px;
}


.form-multiline .form-group {
    margin-bottom: 15px;
    margin-right: 30px;
}
.form-multiline label,
.form-multiline .form-control {
    margin-right: 15px;
}

.spacebuttonsleasing{
padding: 5px;
}

#searchbutton ,#searchbuilding ,#searchdob {

margin-left:1000px;
}

.legendtest{
color:green;
}

.leasebasehdr{
color: blue;
}

.tabdepandent{
color: #800080;
}

.tabdet{
color: #808000;
}

.leasinghdr{
/*color: #808000;*/
color: #008B8B;
}

hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    /*margin-left: auto;*/
    /*margin-left: 20px;*/
    margin-left: 30px;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
border-color:#008B8B;
width:695px;
} 

.linepart2{
display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    
    border-width: 1px;
border-color:#008B8B;
width:260px;
}

.col-centered{
float: none;
  display: block;
  /*margin-left: auto;
  margin-right: auto;*/
  /*text-align: left;*/
 /* margin: 0 auto;*/
 font:bold 12px/30px Georgia, serif;
}

#siderect{
float: left;
width: 350px;
height:1300px;
/*background-color: #E6E6FA;*/
/*margin-left: 2px;*/
/* background-image: linear-gradient(#B8860B, #BDB76B);*/
/*background-image: linear-gradient(#B0C4DE, #778899);*/
/*background-image: linear-gradient(#708090, #008080);*/
margin-top: 20px;
margin-right: 150px;
/*font:bold 12px/30px Georgia, serif;*/
padding: 10px;
font:bold 18px/20px Georgia, serif;

background-color:#87CEEB;
}

.innertitle{
/*background-color:#2F4F4F;*/
/*background-color:#556B2F;*/
background-color:#008B8B;
font:bold 10px/20px Georgia, serif;
color:white;
width:90px;
}

.innertitle1{
/*background-color:#2F4F4F;*/
/*background-color:#556B2F;*/

background-color:#008B8B;
font:bold 10px/20px Georgia, serif;
color:white;
width:90px;
margin-left:17px;
}

#Checkboxedit{
font:bold 13px/20px Georgia, serif;
margin-left:17px;
color:#2F4F4F;
}

.rectstyle{
text-align: center;
color: white;
}

.form-group .required .control-label:after {
  content:"*";color:red;
}


.navbar{
margin-bottom:0;
border-radius: 0;
color: #FFF;


border: 0;
}

.navbar-brand {
float: left;


}

.navbar-inverse .navbar-nav .active a,
.navbar-inverse .navbar-nav .active a:focus,
.navbar-inverse .navbar-nav .active a:hover {
color: #FFF;
 background-color: red;

}


#headleasing {
height: 60px;
background-color:#008B8B ;
}

#footertest{
background-color:#008B8B ;
height: 60px;
}

#radiomove{
margin-left: 20px;
}

#radiomovetwo{
margin-left: 20px;
font:bold 12px/20px Georgia, serif;
color:#2F4F4F;
}

#radiomovethree{
margin-left: 20px;
font:bold 12px/20px Georgia, serif;
color:#2F4F4F;
}

#dobmove{

margin-left: 76px;
}

#savebutton{
/*padding:15px;*/
margin-left: 270px;
}


#buttonsgroup{
padding:15px;
}
</style>


<script>
$(function(){
	$("#year").datepicker();
		
	$("#leasingdate").datepicker();
	
	$("#leasingfrom").datepicker();
	
	$("#leasingto").datepicker(); 
	
});




</script>



</head>
<body>



<script>

 
//System.out.println(lastnameset);
//alert(lastnameset);

//alert("sas");

//$("#lastname").val(lastnameset);


</script>

<div class="container-fluid" id="headleasing">



</div>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="./Contactus.jsp">UCF</a>
      <button type ="button" class="navbar-toggle" data-toggle="collapse" 
      data-target = "#myNavbar">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
     </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li class="active"><a class="caroselbold" href="./AddParent.jsp">Create Leasing</a></li>
       <li ><a class="caroselbold" href="./Events.jsp">Events</a></li>
       <li><a class="caroselbold" href="./Contact.jsp">Photo Gallery</a></li>
       <li><a class="caroselbold" href="./UCF_Video.jsp">Video Gallery</a></li>
      <li ><a class="caroselbold" href="./index.jsp">Prayer Request</a></li>
      <li ><a class="caroselbold" href="./SongsNewVer1.jsp">Songs</a></li>
      <li ><a class="caroselbold" href="./SongsNewVer2.jsp">Songs II</a></li>
      <li><a class="caroselbold" href="./Contactus.jsp">Contact</a></li>
    </ul>
    </div>
     </div>
 </nav>	



<div class="container">

<div class = "row">

    
    
    
    <div class="col-sm-9">
    <div class="conttestmainpage">

  <form class= " form-inline form-multiline" role="form"  id="leasingaddsave"  name="leasingadd"     action="AddProcess.jsp"  method = "post">

<fieldset>
	  <legend class="leasinghdr" > Leasing Details Save Return  </legend>
	  
	  <p class = "innertitle"> Name One </p>
	  
	  	 <div class="form-group row">
	  	 
	 	   <div class="form-group required">
	      <label class="control-label col-sm-2 col-centered" style="color:#191970;"  for="firstname1">FirstName</label>
    	<div class="col-sm-4  ">
	  	<input for="inputsm"   name="firstname1"  id="firstname1" placeholder= "Enter Firstname" value="" required></input>
   		</div>
 		 </div>
 	 
 	 
 	 <div class="form-group">
 	  <label class="control-label col-sm-2 col-centered" style="color:#191970;"   for="middlename1">MiddleName</label>
   <div class="col-sm-4 ">
  <input for="inputsm" name="middlename1"  id="middlename1" placeholder= "Enter Middle Name" value="" ></input>
  	</div>
  </div>
 	 	 
 	 <div class="form-group required">
 	  <label class="control-label col-sm-2 col-centered" style="color:#191970;"   for="lastname1">LastName</label>
   <div class="col-sm-4 ">
  <input for="inputsm" name="lastname1"  id="lastname1" placeholder= "Enter Last Name" value=""  required></input>
  	</div>
  </div>
  
  
 <div class="form-group">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">Gender</label>
 	<label class="radio-inline"  id="radiomove">
      <input type="radio" name="optgendername1" id= "optgendername1" checked>M
    </label>
    <label class="radio-inline">
      <input type="radio" name="optgendername1" id= "optgendername1">F
    </label>
    </div>
  
     
  <div class="form-group"  id="dobmove">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dobname1">DOB</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="dobname1"  id="dobname1" placeholder= "Enter Birth Date" value="" ></input>
  </div>
  </div>
  
  <div class="form-group">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="visastatusname1">ImmigrationStatus</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="visastatusname1"  id="visastatusname1" placeholder= "Enter Visa Status" value="" ></input>
  </div>
  </div>
  
   <hr>
   

	  <p class = "innertitle1"> Second Name  </p>
	  	
	 	   <div class="form-group">
	      <label class="control-label col-sm-2 col-centered" style="color:#191970;"  for="firstname2">FirstName</label>
    	<div class="col-sm-4  ">
	  	<input for="inputsm"   name="firstname2"  id="firstname2" placeholder= "Enter Firstname" value="" ></input>
   		</div>
 		 </div>
 	 
 	 
 	  <div class="form-group">
 	  <label class="control-label col-sm-2 col-centered" style="color:#191970;"   for="middlename2">MiddleName</label>
   <div class="col-sm-4 ">
  <input for="inputsm" name="middlename2"  id="middlename2" placeholder= "Enter Middle Name" value="" ></input>
  	</div>
  </div>
 	 	 
 	 <div class="form-group">
 	  <label class="control-label col-sm-2 col-centered" style="color:#191970;"   for="lastname2">LastName</label>
   <div class="col-sm-4 ">
  <input for="inputsm" name="lastname2"  id="lastname2" placeholder= "Enter Last Name" value="" ></input>
  	</div>
  </div>
  
  
 
  
   <div class="form-group">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">Gender</label>
 	<label class="radio-inline"  id="radiomove">
      <input type="radio" name="optgendername2"  id="optgendername2"    >M
    </label>
    <label class="radio-inline">
      <input type="radio" name="optgendername2"  id="optgendername2" checked>F
    </label>
    </div>
  
   
  <div class="form-group" id="dobmove">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">DOB</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="dob"  id="dob2" placeholder= "Enter Birth Date" value="" ></input>
  </div>
  </div>
  
  
   <div class="form-group">
  <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="visastatus2">ImmigrationStatus</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="visastatus2"  id="visastatus2" placeholder= "Enter Visa Status" value="" ></input>
  </div>
  </div>
  
   <hr>
  
  
   <p class = "innertitle1"> Owner Address </p>
   
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="addr1">Address1</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="addr1"  id="addr1" placeholder= "Enter Address" value="" ></input>
  		
  </div>
  </div>
  
  
  <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="addr2">Address2</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="addr2"  id="addr2" placeholder= "Enter Address2" value="" ></input>
  		
  </div>
  </div>
  
  
  <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="city">City</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="city"  id="city" placeholder= "Enter City" value="" ></input>
  		
  </div>
  </div>
  
     <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="state">State</label>
  <div class="col-xs-6 ">
  <input for="inputsm" name="state"  id="state" placeholder= "Enter State" value="" ></input>
  </div>		
  </div>

  
  
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="homezip  ">HomeZip</label>
  <div class="col-xs-2 ">
  <input for="inputsm" name="homezip"  id="homezip" placeholder= "Enter HomeZip" value="" ></input>
   </div>
  </div>
  
  
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="workphone">workphone</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="workphone"  id="workphone" placeholder= "Enter Work Phone" value="" ></input>
  		
  </div>
  </div>
  
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="homephone">Homephone</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="homephone"  id="homephone" placeholder= "Enter Home Phone" value="" ></input>
  		
  </div>
  </div>
  
  
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="mobile">Mobile</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="mobile"  id="mobile" placeholder= "Enter Mobile" value="" ></input>
   </div>
  </div>
  
   <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="email">Email</label>
  <div class="col-sm-4 ">
  <input for="inputsm" name="email"  id="email" placeholder= "Enter Email" value="" ></input>
   </div>
  </div>
  
  <hr>
  
  <p class = "innertitle1"> Unit Details </p>
  
 <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="leasingdate">LeasingDate</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="leasingdate"    id="leasingdate" placeholder= "Enter Leasing Date" value="" ></input>
  		</div>
  		</div>
  
 		 <div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="leasingfrom"> LeasingFrom </label>
  			<div class="col-sm-4 ">
  			<input for="inputsm" name="leasingfrom"    id="leasingfrom" placeholder= "Enter Leasing From" value="" ></input>
  		</div>
  		</div>

  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="leasingto"> LeasingTo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="leasingto"   id="leasingto" placeholder= "Enter Leasing To" value="" ></input>
  		</div>
  		</div>
  	
        
         <div class="form-group">
       	<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="streetname"> StreetName</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="streetname"   id="streetname" placeholder= "Enter Street Name" value="" ></input>
  		</div>
  		</div>
        
 		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="buildingno"> BuildingNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="buildingno"   id="buildingno" placeholder= "Enter Building No" value="" ></input>
  		</div>
  		</div>
    
        <div class="form-group">
       	<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="aptno"> AptNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="aptno"   id="aptno" placeholder= "Enter Apt No" value="" ></input>
  		</div>
  		</div>
  		
  		
  		
  		
  		 <hr>
  		
  		<p class = "innertitle1"> Bank Details </p>
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="bankname"> BankName</label>
 		<div class="col-sm-4 ">
  		<input for="inputsm" name="bankname"   id="bankname" placeholder= "Enter Bank Name" value="" ></input>
  		</div>
  		</div>
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="routingno"> RoutingNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="routingno"   id="routingno" placeholder= "Enter Routing No" value="" ></input>
  		</div>
  		</div>
  		
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="accountno"> AccountNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="accountno"   id="accountno" placeholder= "Enter Account No" value="" ></input>
  		</div>
  		</div>
  		
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="bankzip"> BankZip</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="bankzip"   id="bankzip" placeholder= "Enter BankZip" value="" ></input>
   		</div>
  		</div>
  		
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="membersince">MemberSince</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="membersince"   id="membersince" placeholder= "Enter Member Since" value="" ></input>
  		</div>
  		</div>
  		
  		<div class="form-group">
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="bankphone">PhoneNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="bankphone"    id="bankphone" placeholder= "Enter Phone No"  ></input>
  		</div>
  		</div>
  		
          <hr>
          
          <p class = "innertitle1"> Vehicle Details </p>
          
		<div class="form-group"> 
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="model">CarModel</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="model"    id="model" placeholder= "Enter Model" value="" ></input>
  		</div>
  		</div>
  	
  		
  		<div class="form-group"> 
  		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="make">Make</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="make"    id="make" placeholder= "Enter Make" value="" ></input>
  		</div>
  	    </div>
  		
  		<div class="form-group"> 
   		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="carno">CarNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="carno"    id="carno" placeholder= "Enter Car No" value="" ></input>
  		</div>
  		</div>
      
        <div class="form-group"> 
   		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="year">Year</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="year"    id="year"   placeholder= "Enter Year" value="" ></input>
  		</div>
  		</div>
  		
  		<div class="form-group"> 
   		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="color">Color</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="color"  id="color" oninput="displaycolor"  placeholder= "Enter Color" value="" ></input>
  		</div>
  	    </div>
  	    
  	    <div class="form-group"> 
   		<label class="control-label col-sm-2 col-centered" style="color:#191970;" for="license">LicenseNo</label>
  		<div class="col-sm-4 ">
  		<input for="inputsm" name="license"  id="license" oninput="displaycolor"  placeholder= "Enter Color" value="" ></input>
  		</div>
  	    </div>
		
		 <hr>
		 
		 <input type="hidden" name="savecall" value="savecalltest" id="savecall" ></input>
		 <input type="hidden" name="modifycall" value="modifycalltest" id="modifycall" ></input>
		 
				
		 <div class="form-group"  id= "buttonsgroup"> 

		<input type="submit" value="save"  name= "save" id="savebutton" class="btn btn-success"  onclick="leasingsave()"></input>
		<input type="submit" value="modify" id="modifybutton" class="btn btn-success"  onclick="leasingmodify()"></input>
		<input type="submit" value="cancel" id="cancelbutton" class="btn btn-success"  ></input>
		


		</div>
  		</form>
  		
  		</fieldset>
       
    </div>
    </div>
   
    
    
    <div class="col-sm-3">
	<div   id= "siderect"> 
     
     <p class = "rectstyle"> Leasing Alerts & Messages </p>  
     
      
    <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">Warnings</label> 
     
    <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Payment Plan</label>
	</div> 
	
	 <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Claims Filed</label>
	</div> 
	
	 <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Warning When Payments</label>
	</div> 
	
	 <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Late Payment Account</label>
	</div> 
	
	</div>
	
	<hr class="linepart2">
	
    <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">Notifications</label>
  			<label class="radio-inline"  id="radiomovetwo">
    		<input type="radio" name="optradio1" >By Mail
    		</label>
    
    		<label class="radio-inline"  id="radiomovetwo">
    		<input type="radio" name="optradio1" checked>By Email
    		</label>
    </div>
  
     <hr class="linepart2">
     
     <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">Confidentiality</label>
     
     <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Do Not Share Owner Phone No & Email</label>
	</div> 
	
	 <div class="checkbox"  id="Checkboxedit">
  	<label><input type="checkbox" value="">Exclude From Public Directory</label>
	</div> 
   
     </div>
     
      <hr class="linepart2">
     
      <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">PaymentMode</label>
       <label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio2" checked>By Check
    		</label>
    
    		<label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio2">By online
    		</label>
    </div>
  
     <hr class="linepart2">
     
     
      <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">DifficultiesInPayments</label>
       <label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio3" >Yes
    		</label>
    
    		<label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio3" checked>No
    		</label>
    		
    		<label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio3">Oftenly
    		</label>
    </div>
  
     <hr class="linepart2">
     
     
      <div class="form-group">
     <label class="control-label col-sm-2 col-centered" style="color:#191970;" for="dob">UnderLeaseBreakNotice</label>
       <label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio4" >Yes
    		</label>
    
    		<label class="radio-inline"  id="radiomovethree">
    		<input type="radio" name="optradio4" checked>No
    		</label>
    		
    		
    </div>
  
     <hr class="linepart2">
     
    </div>
    </div>
    
     </div>
    
    </div>
    </div>

</body>
</html>