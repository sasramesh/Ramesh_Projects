<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 50px;
    text-align: center;
}

/* Create three equal columns that floats next to each other */
.column {
    //float: left;
    width: 33.33%;
    padding: 10px;
    height: 400px; /* Should be removed. Only for demonstration */
    margin: 10px 50px 4px 300px;
}

/* Create three equal columns that floats next to each other */
.column1 {
    //float: left;
    width: 23.33%;
    padding: 10px;
    height: 400px; /* Should be removed. Only for demonstration */
    margin: 10px 600px 1px 1100px;
}


/*
/* Clear floats after the columns */
//.row:after {
  //  content: "";
    //display: table;
   /// clear: both;
//}
*/

/* Style the footer */
.footer {
    background-color: #f1f1f1;
    padding: 10px;
    text-align: center;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
///*@media /*(max-width: 600px) {*/*/
   // /*.column {*/
  //      ///*width: 100%;*/
   // /*}*/
///*}*/
</style>
</head>
<body>

<div class="header">
  <h2>Header</h2>
  <h3>CSS Template using Float</h3>
  <p>In this example, we have created a header, three equal columns and a footer. On smaller screens, the columns will stack on top of each other. Resize the browser window to see the responsive effect.</p>
</div>


  <div class="column" style="background-color:#aaa;"><Column>
  <div class="form-group">
      <label class="control-label col-sm-2" style="color:blue;" for="address">Address:</label>
      <div class="col-sm-2">
      <input type="address" class="form-control" id="address" placeholder="Enter Address " name="address" value="">
    </div>
    </div>
    </div>
  

  <div class="column1" style="background-color:#aaa;"><Column>
  <div class="form-group">
      <label class="control-label col-sm-2" style="color:blue;" for="address">Address:</label>
      <div class="col-sm-2">
      <input type="address" class="form-control" id="address" placeholder="Enter Address " name="address" value="">
    </div>
    </div>
    </div>
    
    
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Basic</li>
          <li class="w3-padding-16">Web Design</li>
          <li class="w3-padding-16">Photography</li>
          <li class="w3-padding-16">1GB Storage</li>
          <li class="w3-padding-16">Mail Support</li>
          <li class="w3-padding-16">
            <h2>$ 10</h2>
            <span class="w3-opacity">per month</span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black">Sign Up</button>
          </li>
        </ul>
      </div>
    

<div class="footer">
  <p>Footer</p>
</div>

</body>
</html>
