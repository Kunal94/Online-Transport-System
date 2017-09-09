<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
System.out.print(n);
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","infy123");

PreparedStatement ps=con.prepareStatement("select vid,source,destination,tvehicle,chargetruck,status from truckinfo where vid ='"+n+"' ");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();
while(rs.next()){
out.print("<table border='2' cellpadding=2 id='myTable'>");
out.print("<tr><th>Vehicle Number</th><td>"+rs.getString(1)+"</td></tr>");
//out.print("<tr><th>Truck No.</th><td>"+rs.getString(2)+"</td></tr>");
//out.print("<tr><th>Insurance</th><td>"+rs.getString(3)+"</td></tr>");
out.print("<tr><th>Type of vehicle</th><td>"+rs.getString(4)+"</td></tr>");
out.print("<tr><th>fare per day</th><td>"+rs.getString(5)+"</td></tr>");
out.print("<tr><th>status</th><td>"+rs.getString(6)+"</td></tr>");
out.print("<tr><th>Route</th><td>"+rs.getString(2)+rs.getString(3)+"</td>");
out.print("</tr>");
out.print("</table>");
out.print("<br/>");

}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>