<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>Create Company</h2>   
                <form name="myform" action="savecompany.jsp">
<table>
<tr><td>Company Name:  </td><td><input type="text" name="cname"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Owner Email:  </td><td><input type="text" name="omail"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Password:  </td><td><input type="password" name="opass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Company Address:  </td><td><input type="text" name="caddress"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>City:  </td><td><input type="text" name="city"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>State:  </td><td><input type="text" name="cstate"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Zipcode:  </td><td><input type="text" name="czipcode"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Phone Number:  </td><td><input type="text" name="cno"/></td></tr>
	<tr><td><br></td></tr>
<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>

</form>
               </div>
                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>