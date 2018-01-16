<%@page import="java.sql.*"%>
<%@ page language="java" import="java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement" %>
<%@ page language="java" import="java.sql.PreparedStatement"  %>
<%@ page language="java" import = "java.sql.SQLException" %>
<%
String ide=request.getParameter("empid");
int num=Integer.parseInt(ide);
String name=request.getParameter("fname");
String address=request.getParameter("lname");
String contact=request.getParameter("dept");

String valuesstr = (name + " , " + address +  " , " + contact ) ;
System.out.println(valuesstr);
try{
Connection conn = null;
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();

conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
Statement st=null;
st=conn.createStatement();

String updatequery="update empram set fname='"+name+"',lname='"+address+"',dept='"+contact+"' where empid="+307;

System.out.println(updatequery);

st.executeUpdate(updatequery);
response.sendRedirect("http://localhost:8080/RameshTest/application.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>