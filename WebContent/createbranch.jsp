<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>Create Branch</h2>
                <div id="newsletter">
                
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
                  
                <form name="myform" action="savebranch.jsp">
<table>
<tr><td>Manager Email:  </td><td><input type="text" name="mmail"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Password:  </td><td><input type="password" name="mpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Branch Location:</td><td><input type="text" name="blocation"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Branch City:</td><td><input type="text" name="bcity"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Branch State:</td><td><input type="text" name="bstate"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Phone Number:</td><td><input type="text" name="cno"/></td></tr>
	<tr><td><br></td></tr>
<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>
               </div>
                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>