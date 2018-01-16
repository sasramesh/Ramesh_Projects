<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

 
 <style>

/* margin-top: 30px;*/
body {
    background-color: #F0FFFF;
}


.carousel {
  /* any dimensions are fine, it can be responsive with max-width */
  width: 1200px;
  height: 650px;
 /* margin-top: 10px;
  margin-bottom: 100px;*/
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

}

 h1 {
 text-align: center;
 color: white;
 font-family:Sans-serif;
 font-weight: bold;
 font-size: 40px;
 font-style: italic;
 }
 
 p.addr {
 font-weight: bold;
 font-size: 20px;
 color: #191970;
 }
 
  p.phone {
 font-weight: bold;
 font-size: 20px;
 color: #556B2F;
 }
 
 
 p.footp{
 color: blue;
 padding:10px;
 }
 
 p.timer-cnt {
 color:white;
 font-weight: bold;
 font-size: 30px;
 text-align: center;
 }
 
.timer-hdr{
list-style-type:none;
color: red;
font-size: 25px;
font-weight: bold;
}
 
 h2 {
  text-align: center;
  color: green;
 }
 

 .head-first{
  color: white;
  font-size: 25px;
font-weight: bold;
 }
 
  .head-sec{
  color: white;
  text-align: center;
  font-size: 25px;
font-weight: bold;
 }
 
.head {

height:180px;
padding: 10px;
background-color:#778899;
color:red;

} 


 
 .footerbelow{
 border-style: none;
 height: 20px;
 background-color: orange;
 }
 
 .caroselabove{
 border-style: none;
 height: 7px;
  background-color: #808000;
 }
 
 #icon{
 max-width: 200px;
 margin: 1% auto;
 }
 
 #icon1{
 width:100%;
  margin: 1% auto;
 }
 
 footer{
 width:100%;
 height: 200px;
 background-color: #5E4485;
 padding: 3%;
 color: #FFF;
 }
 
 .timer{
 color:green;
 font-weight: bold;
 font-size: 60px;
 text-align: center;
 height:180px;
 background-color: #F0FFFF;
 margin-top: 2px;
 }
 
 .days-disp {
  color:green;
 font-weight: bold;
 font-size: 30px;
 text-align: center;
 }
 
 #map{
height: 400px;
width:100%;
}
 
 
 .live {
  font-weight: bold;
 font-size: 50px;
 text-align: center;
 }
 </style>
 
 </head>
<body>

<div class="container">
<div class="head">


<div class="col-sm-4">
       <img src= "webpage_1.JPG" id="icon">
</div>

 <div class="col-sm-8">      
 <p class= "head-first"> United Christian Fellowship USA </h1>
</div>

<div class="col-sm-4">
<p class= "head-sec" >   JESUS IS SAME  FOR EVER  </h2>
</div>


</div>
</div>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">UCF</a>
      <button type ="button" class="navbar-toggle" data-toggle="collapse" 
      data-target = "#myNavbar">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li class="active"><a href="BootCarol.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">UCF <span class="caret"></span></a>
        <ul class="dropdown-menu" id= "navbar-list">
          <li ><a href="Home.jsp" color="red">Where</a></li>
          <li><a href="About.jsp">About</a></li>
          <li ><a href="index.jsp">Index</a></li>
        </ul>
      </li>
       <li><a href="Contact.jsp">Photo Gallery</a></li>
      <li ><a href="index.jsp">Prayer Request</a></li>
      <li><a href="Contact.jsp">Contact</a></li>
    </ul>
    </div>
  </div>
</nav>	




<div class="container">
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
       <img src="Dani_photo_2_carousel_dec_18_17.jpg"   >
      </div>
      

      <div class="item">
       <img src="dani_carousel_3_new_mod_de_18_2_17.jpg">
      </div>
           
      <div class="item">
       <img src="Dani_Ramesh_prof_dec_18_17_carosul_mod_dec_18.jpg">
      </div>
      </div>  <! end active -->

    <!-- Left and right controls -->
   
  </div>
</div>

<div class="container">
 <h3 class="live"  style="display:none;"   > Event is in Progress    </h3>
 </div>
 
<div class="container">
  <div class="timer" >
     <li class="timer-hdr"><a href="Contact.jsp">Welcome To Next Prayer Meet After</a></li>
    <span id="days" >00</span>
    <span id="hours" >00</span>
    <span id="minutes" >00</span>
    <span id="seconds" >00</span>
     <p> </p>
     <div class = "days-disp">
   <span id="days_cnt" >Days</span>
    <span id="hours_cnt" >Hours</span>
    <span id="minutes_cnt" >Mins</span>
    <span id="seconds_cnt" >Secs</span>
    </div>
    <script src="countdown.js" ></script>
    <script>
    var callbackfunction = function() {
    	
    	var e = document.getElementsByClassName("timer");
    	e[0].style.display = "none"
    	
    	var y = document.getElementsByClassName("live");
    	y[0].style.display = "block"
    	console.log('Done good!' ) ;
    	
    	
    }
      countdown('01/20/2018 05:30:00 PM', ['days' , 'hours' , 'minutes' , 'seconds'],
    		     callbackfunction) 
    		     
    	  
    
    </script>
    
    <h2>   </h2>
    
    <h1>          </h1>
    
  </div>
  </div>


<div class="container">
  <h2> </h2>
  
 
   <form>
      
    <li><a href="Contact.jsp">Contact</a></li>
    
     <div class="col-sm-4">
       <img src= "webpage_1.JPG" id="icon1"  >
          <h4> </h4>
          <p> drama/conversation: children wonder what kind of gift they 
          can give to God for salvation, until they learn that it is free </p>
        </div>

     <div class="col-sm-4">
       <img src= "webpage_2.JPG" id="icon1">
          <h4> </h4>
          <p> drama/conversation: children wonder what kind of gift they 
          can give to God for salvation, until they learn that it is free </p>
        </div>
    
    <div class="col-sm-4">
       <img src= "webpage_3.JPG" id="icon1">
          <h4> </h4>
          <p> drama/conversation: children wonder what kind of gift they 
          can give to God for salvation, until they learn that it is free </p>
        </div>
   
  
</div>


   <div class="container"> 
   <div class="address-design">
     <h2> Worship Place </h2>
     <p>  </p>
     
  
    
    <div class="col-sm-4">
    
    <img src= "vine_ch_logo.jpg" id="icon">
         <p>    </p>
         <p>    </p> 
         <p>    </p>
         <p class="addr"> The Vine Church </p>
          <p class="addr"> 2501 Gallows Road </p>
          <p class="addr"> Dunn Loring </p>
          <p class="addr"> VA 22027 </p>
          <p class="phone"> Phone: (571) 332 6479 </p>
          <h3>   </h3>
        </div>  
        
      <div class="col-sm-8">    
      
<div id = "map" >  </div>

		<script>

  			 function initMap(){
      
  				var options = {
  			             zoom:13,
  			             center:{lat:38.8893,lng:-77.2252}                 
  							} 
             var map = new 
             google.maps.Map(document.getElementById("map"), options);

			addMarker({coords:{lat:38.889 , lng:-77.2252},content:' UCF worship venue  Vine Church Dunn Looring Campus '});
       		 
       		 function addMarker(props){
       			 var marker = new google.maps.Marker({
       				 position:props.coords,
       				 map:map,
       				 icon:props.iconImage
       			 });
       			 
       			 if (props.content){
       				 
       				 var infoWindow = new google.maps.InfoWindow({
       					 content:props.content
       				 });
       				 
       				marker.addListener('click',function(){
       					infoWindow.open(map,marker);
       				}) ;
       			 }
       			 
       		 }
				}
		</script>

	   	
    	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBMBxatbSd37LiObgZt4mEkW3cJySo8s0c&callback=initMap">
    </script>
    
     </div>
     
     </div>
     </div>
   	
   	<h2>       </h2>
   	
   	
  <script>
  
 function sample(){
	 
	/* alert('sas');  */
 }
 
 </script>
    
  
  <footer class= "container">
     <div class="col-sm-4">
        <h4> About Us </h4>
          <p> We the small group from Merrifield community near to Dunn Loring 
          metro , joining every fortnight weeks in the glory of God Jesus. </p>
        </div>
        
        <div class="col-sm-4">
        <h4> Contact Us </h4>
          <p> (571) 332 6479 </p>
          <hr  color=red size=40 width='100%' align=right>
          <p>  Email: sasramesh@yahoo.com </p>
          
        </div>
  
</footer>

 <div class = "container" >
        <div class="footerbelow">
        
        </div>
     </div>
    




    


 </form>
</body>

</html>
