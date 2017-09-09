<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%! static int count=0; %>
<%try
{
String cname=request.getParameter("email");
String omail=request.getParameter("username");
String opass=request.getParameter("userpass");
//System.out.println(request.getParameter("cno")+"------");

long fare_v=Long.parseLong(request.getParameter("number"));
String caddress=request.getParameter("address");
String city=request.getParameter("city");
String cstate=request.getParameter("state");
String czipcode=request.getParameter("zipcode");
//String to=request.getParameter("to");

	

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","infy123");
PreparedStatement ps=con.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?,?)");
ps.setString(1,omail);
ps.setString(2,cname);
ps.setString(3,opass);
ps.setString(4,caddress);
ps.setString(5,city);
ps.setString(6,cstate);
ps.setString(7,czipcode);
ps.setLong(8,fare_v);
int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="index.jsp"></jsp:forward>
