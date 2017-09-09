<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%! static int count=0; %>
<%try
{
String mmail=(String)session.getAttribute("username");
String v_id=request.getParameter("vid");
String tno=request.getParameter("tvehicle");

int fare_v=Integer.parseInt(request.getParameter("fare"));
String cname=request.getParameter("cname");
String owner=request.getParameter("owner");
String mobile=request.getParameter("mobile");
String from=request.getParameter("from");
String to=request.getParameter("to");
java.util.Date sqdate=Calendar.getInstance().getTime();
java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","infy123");
PreparedStatement ps=con.prepareStatement("insert into truckinfo values(?,?,?,?,?,?,?)");
count++;
ps.setString(1,mmail);
ps.setString(2,v_id);
ps.setString(3,from);
ps.setString(4, to);
ps.setString(5,tno);
ps.setInt(6,fare_v);	
ps.setString(7,"Available");
int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="admin.jsp"></jsp:forward>
