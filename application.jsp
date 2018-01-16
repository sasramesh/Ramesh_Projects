<%@ page import="java.sql.*" %>
<%@ page language="java" import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement" %>
<%@ page language="java" import="java.sql.PreparedStatement"  %>
<%@ page language="java" import = "java.sql.SQLException" %>
<html>
<head>

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script language="javascript">

function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?empid='+id;
    f.submit();
}
</script>
</head>
<body>

<br><br>
<form method="post" name="form">
<table border="1">
<tr><th>FirstName</th><th>LastName</th><th>Department</th><th>Employee ID</th><th>Action</th></tr>
<%
Connection con = null;

/*
String url = "jdbc:mysql://localhost:3306/";
String db = "test";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";
*/

int sumcount=0;
Statement st;
try{
//Class.forName(driver).newInstance();
/*con = DriverManager.getConnection(url+db,userName,password);*/

Class.forName("oracle.jdbc.driver.OracleDriver");

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");

String query = "select * from empram";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(1)%></td>
<td><input type="button" name="edit" value="Edit" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord('308');" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>