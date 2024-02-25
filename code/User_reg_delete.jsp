<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String uid=request.getParameter("user_id");

int k=s.stmt.executeUpdate("delete from user_registration where user_id="+uid+"");
%>
<script>
alert("Deleted...");
document.location="User_reg_view.jsp";
</script>