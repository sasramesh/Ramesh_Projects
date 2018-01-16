<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
 #map{
height: 400px;
width:50%;
}

</style>
</head>
<body>


<h1> My Google Map </h1>
 <div class="container"> 
   <div class="address-design">
<div id = "map" >  </div>

		<script>

  			 function initMap(){
      
  				var options = {
  			             zoom:13,
  			             center:{lat:38.8893,lng:-77.2252}                 
  							} 
             var map = new 
             google.maps.Map(document.getElementById("map"), options);

			addMarker({coords:{lat:38.889 , lng:-77.2252},content:' Vine Church Dunn Looring Campus '});
       		 
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
 
           
        

</body>
</html>