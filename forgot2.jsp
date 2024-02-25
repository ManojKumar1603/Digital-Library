


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/

</head> 
<body>
								<!--/login-->
								
									

<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
  <p>
      <%
  
String username=request.getParameter("username");

ResultSet rs=s.stmt.executeQuery("select * from login where username='"+username+"'");
if(rs.next())
{
%>
</p>
  <p align="center" style="font-size: 36px; font-weight: bold"> DIGITAL LIBRARY </p>
  <form name="form1" method="post" action="forgot3.jsp">
 
      <div align="center">
        <input type="hidden" value="<%=username%>" name="username" readonly="">
	    <label> Hint Question</label>
        <input name="h_q" type="text" id="h_q" value="<%=rs.getString("hint_qst")%>">
        <input name="hinta" type="text" id="hinta" placeholder="Enter Hint Answer">   
      </div>
    <div class="submit">
        <div align="center">
          <input type="submit"  value="Next" >
        </div>
    </div>  
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
<div class="footer">
										      <div class="error-btn">  | 
                                                  <!--/404-->
                                                  <!--js -->
                                                            <script src="admin/js/jquery.nicescroll.js"></script>
                                                            <script src="admin/js/scripts.js"></script>
                                                  <!-- Bootstrap Core JavaScript -->
                                                            <script src="admin/js/bootstrap.min.js"></script>
</div>
   </div>
									</body>
</html>
