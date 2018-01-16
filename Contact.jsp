<%@page import="java.util.Properties"  %>
<%@page import="javax.mail.*"  %>
<%@page import="javax.mail.internet.*"  %>
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
  
  body {
    background-color: linen;
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
background-color:#3CB371;
color:red;

}

 #icon{
 max-width: 200px;
 margin: 1% auto;
 }

.timer-hdr{
list-style-type:none;
color: red;
font-size: 25px;
font-weight: bold;
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
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="BootCarol.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">UCF <span class="caret"></span></a>
        <ul class="dropdown-menu" id= "navbar-list">
          <li><a href="Home.jsp" color="red">Where</a></li>
          <li><a href="About.jsp">About</a></li>
          <li><a href="index.jsp">Index</a></li>
        </ul>
      </li>
      <li><a href="Contact.jsp">Photo Gallery</a></li>
      <li><a href="index.jsp">Prayer Request</a></li>
      <li><a href="Contact.jsp">Contact</a></li>
    </ul>
    
  </div>
</nav>	

<div class="container">
  <div class="timer">
  <div class="col-sm-4">
       <img src= "webpage_1.JPG" id="icon">
  
     <li class="timer-hdr"><a href="https://drive.google.com/drive/folders/1YiZPTZ9zmqPY_2IGtk-RwZf3E0B8mYbL">2016 Picnic </a></li>

</div>
</div>
</div>

<%!

 public static class SMTPAuthenticator extends Authenticator {
	
	public PasswordAuthentication getPasswordAuthentication() {
		
		return new PasswordAuthentication("sasdan0208" , "Dani@2017") ;
	}
}

%>


<%

int result = 0;

if (request.getParameter("send") != null) {
	
	String d_uname = "sasdan0208";
	String d_password = "Dani@2017";
	String d_host = "smtp.gmail.com";
	int d_port = 465;
	
	String m_to = new String();
	String m_from = "sasdan0208@gmail.com" ;
	String m_subject = new String();
	String m_text = new String();
	
	if (request.getParameter("to") != null) {
		m_to = request.getParameter("to");
	}
	
	if (request.getParameter("subject") != null) {
		m_subject = request.getParameter("subject");
	}
	
	if (request.getParameter("message") != null) {
		m_text = "<h1> Welcome to Wep mail Sending </h1><br  /> ";
		m_text = m_text.concat(request.getParameter("message"));
		m_text = m_text.concat("<br /><h2> Thanks and meet again!!</h2>");
	}
	
	Properties props = new Properties();
	
	SMTPAuthenticator auth = new SMTPAuthenticator();
	
	Session ses = Session.getInstance(props, auth);
	
	MimeMessage msg = new MimeMessage(ses);
	
	msg.setContent(m_text, "text/html");
	msg.setSubject(m_subject);
	msg.setFrom(new InternetAddress(m_from));
	msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
	
	try {
		
		Transport transport = ses.getTransport("smtps");
		
		transport.connect(d_host,d_port,d_uname, d_password);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		
		transport.close();
		
	} catch (Exception e) {
		out.println(e);
	}
	}
%>

<div class = "container">
<form class = "form-horizontal" name="myform" action = "index.jsp"  method = "POST">

  
  
  <div class="form-group">
  		<label class="control-label col-sm-2" style="color:red;" for="email">Email:</label>
  <div class="col-sm-2">
  		<input type="text"  class="form-control" name="to"  id="to" placeholder= "Enter Name" value="">
  </div>
  </div>
  
  
   <div class="form-group">
  		<label class="control-label col-sm-2" style="color:red;" for="subject">Subject:</label>
  <div class="col-sm-2">
  		<input type="text"  class="form-control" name="subject" id="subject" placeholder= "Enter Email" value="">
  </div>
  </div>
  
    <div class="form-group">
  		<label class="control-label col-sm-2" style="color:red;" for="message">Message:</label>
  		<textarea name="message" id ="message" rows="10" cols="60" placeholder="Enter Message" ></textarea>
 </div>
  


<input type="hidden" name="hidden" value="<%= result %>" />
<input type="reset" value="clear" name="clear" />
<input type="submit" value="send" name="send" />
<div class="form-group"> 
 <div class="col-sm-offset-2 col-sm-10">
<button type="reset" value="clear" name="clear" class="btn btn-primary">Clear</button>
<button type="submit" value="send" name="send" class="btn btn-primary">send</button>
 </div>
</div>

</form>

<script language="JavaScript">
    function displayResult(){
    	if (document.myForm.hidden.value === "1"){
    		
    		system.out.println("Mail was sent");
    	}
    	
    }
</script>

</div>
<p> Contact Page </p>


</body>
</html>