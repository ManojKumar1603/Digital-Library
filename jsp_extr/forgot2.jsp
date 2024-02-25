


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/

</head> 
<body>
								<!--/login-->
								
									

<%@page import="java.sql.*"%>
<%@page import="vote.booth"%>
<jsp:useBean id="v" class="vote.booth"/>
<jsp:getProperty name="v" property="conn"/>
  <%
  
String username=request.getParameter("username");

ResultSet rs=v.stmt.executeQuery("select * from login where username='"+username+"'");
if(rs.next())
{
%>
<form name="form1" method="post" action="forgot3.jsp">
 
      <input type="hidden" value="<%=username%>" name="username" readonly="">
	  <label>Hint Question</label>
   <input name="h_q" type="text" id="h_q" value="<%=rs.getString("h_q")%>">
   <input name="hinta" type="text" id="hinta" placeholder="Enter Hint Answer">
   
   <div class="submit"><input type="submit"  value="Next" ></div>  
</form>
<%
}
else
{
%>
<script>
alert("Invalid Username");
history.back();
</script>
<%
}
%>
 </div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>
						
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
												<div class="error-btn">
															<a class="read fourth" href="admin/index.html">Return to Home</a>
												</div>
										   <p>&copy 2016-17 E-Wallet | Design by <a href="#" target="_blank">Firoz Shrishail  and Shubham</a></p>
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->
<script src="admin/js/jquery.nicescroll.js"></script>
<script src="admin/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="admin/js/bootstrap.min.js"></script>
</body>
</html>
