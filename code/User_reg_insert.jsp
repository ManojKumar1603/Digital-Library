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
%>
<script>
alert("inserted....");
document.location="User_reg_view.jsp";
</script>