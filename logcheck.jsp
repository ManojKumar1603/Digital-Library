<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");
session.setAttribute("uname",username);
ResultSet rs=s.stmt.executeQuery("select * from login where username='"+username+"' and password='"+password+"' and status='active' ");
if(rs.next())
{

String type=rs.getString("type");
if(type.equals("admin"))
{
response.sendRedirect("Admin/home.jsp");
}

else if(type.equals("staff"))
{
response.sendRedirect("Staff/home.jsp");
}
else if(type.equals("student"))
{
response.sendRedirect("Student/home.jsp");
}


}
else
{
%>

<script>
alert("Invalid User Name/password OR Admin Should Give Approval Please Contact To Admin");
document.location="login.jsp";
</script>
<%
}

%>
