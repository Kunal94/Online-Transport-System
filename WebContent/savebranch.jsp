<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%! static int count=0; %>
<%try
{
String cname=(String)session.getAttribute("cname");
String mmail=request.getParameter("mmail");
String mpass=request.getParameter("mpass");

//int fare_v=Integer.parseInt(request.getParameter("fare"));
String blocation=request.getParameter("blocation");
String bcity=request.getParameter("bcity");
String bstate=request.getParameter("bstate");
String cno=request.getParameter("cno");
//String to=request.getParameter("to");
java.util.Date sqdate=Calendar.getInstance().getTime();
java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","infy123");
PreparedStatement ps=con.prepareStatement("insert into branchinfo values(?,?,?,?,?,?,?)");
count++;
ps.setString(1,cname);
ps.setString(2,mmail);
ps.setString(3,mpass);
ps.setString(4,blocation);
ps.setString(5,bcity);
ps.setString(6,bstate);	
ps.setInt(7,Integer.parseInt(cno));
int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="admin.jsp"></jsp:forward>
