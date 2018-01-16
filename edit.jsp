<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@ page language="java" import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement" %>
<%@ page language="java" import="java.sql.PreparedStatement"  %>
<%@ page language="java" import = "java.sql.SQLException" %>
<form method="post" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Address</th><th>Contact No</th></tr>
<%
Connection conn = null;
String id=request.getParameter("empid");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
String query = "select * from empram where empid='"+308+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="name" value="<%=rs.getString("fname")%>"></td>
<td><input type="text" name="address" value="<%=rs.getString("lname")%>"></td>
<td><input type="text" name="contact" value="<%=rs.getString("dept")%>"></td>
<td><input type="hidden" name="empid" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>