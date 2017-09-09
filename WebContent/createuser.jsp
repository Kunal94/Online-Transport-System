<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>Create Your Account</h2>
                <div id="newsletter">
                
                                 
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                <form name="myform" action="usersave.jsp">
<table>
<tr><td>Email:  </td><td><input type="text" name="email"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Username:  </td><td><input type="text" name="username"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Password:  </td><td><input type="password" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Address:  </td><td><input type="text" name="address"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>City:  </td><td><input type="text" name="city"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>State:  </td><td><input type="text" name="state"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Zipcode:  </td><td><input type="text" name="zipcode"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Phone Number:  </td><td><input type="text" name="number"/></td></tr>
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