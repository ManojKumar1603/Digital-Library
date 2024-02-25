<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String uid=request.getParameter("uid");
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


int k=s.stmt.executeUpdate("Update user_registration set user_name='"+username+"',password='"+password+"',address='"+address+"',city='"+city+"',state='"+state+"',country='"+country+"',contact_no='"+contact_no+"',age='"+age+"',gender='"+gender+"',qualification='"+qualification+"' where user_id="+uid+" ");
%>
<script>
alert("Updated....");
document.location="User_reg_edit_1.jsp";
</script>