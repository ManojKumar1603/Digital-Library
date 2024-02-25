<%@page import="java.sql.*"%>
<%@page import="vote.booth"%>
<jsp:useBean id="v" class="vote.booth"/>
<jsp:getProperty name="v" property="conn"/>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");
session.setAttribute("uname",username);
ResultSet rs=v.stmt.executeQuery("select * from login where username='"+username+"' and password='"+password+"' ");
if(rs.next())
{

String type=rs.getString("type");
if(type.equals("electionboard"))
{
response.sendRedirect("electionboard/home.jsp");
}

else if(type.equals("candidate"))
{
response.sendRedirect("candidate/home.jsp");
}
else if(type.equals("voter"))
{
response.sendRedirect("voter/home.jsp");
}


}
else
{
%>

<script>
alert("Invalid User Name or password");
document.location="login_form.jsp";
</script>
<%
}

%>
