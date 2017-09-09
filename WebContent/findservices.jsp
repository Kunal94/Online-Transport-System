<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String from=request.getParameter("from");
String to=request.getParameter("to");

if(to.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","infy123");

PreparedStatement ps=con.prepareStatement("select vid,source,destination,tvehicle,chargetruck,status from truckinfo where source='"+from+"' and destination='"+to+" and status='Available''");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();

out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
out.print("<tr><td>Vehicle Number</td><td><B>Source</B></td><td><B>destination</B></td><td><B>Types of vehicle</B></td><td><B>Charges of Truck</B></td><td><B>Status</B></td></tr>");

while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("<td>"+rs.getString(6)+"</td>");
out.print("</tr>");
}
out.print("</table>");
con.close();

}catch(Exception e){e.printStackTrace();}
}//end of if
%>