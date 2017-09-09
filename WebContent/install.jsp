<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
             
                
                  <%
                  
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="test.jsp"></jsp:forward>
<%
}
%>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                <form name="myform" action="tsave.jsp">
<table>
<tr><td>Vehicle Number:: </td><td><input type="text" name="vid"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Type of Vehicle: </td><td><input type="text" name="tvehicle"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Fare</td><td><input type="text" name="fare"/></td></tr>
<tr><td><br></td></tr>
	<tr><td>Source<select name="from" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
	</select></td><td>Destination<select name="to" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
		<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>
                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>