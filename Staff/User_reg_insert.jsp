<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String contact_no=request.getParameter("C_ no");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String qualification=request.getParameter("qualification");


int k=s.stmt.executeUpdate("insert into user_registration values(null,'"+username+"','"+password+"','"+address+"','"+city+"','"+state+"','"+country+"','"+contact_no+"','"+age+"','"+gender+"','"+qualification+"')");
int z=s.stmt.executeUpdate("insert into login values('"+username+"','"+password+"','student','my Contact Number','"+contact_no+"','active')");
%>
<script>
alert("Saved Successfully Your Username:<%=username%>&Password:<%=password%>");
document.location="../login.jsp";
</script>