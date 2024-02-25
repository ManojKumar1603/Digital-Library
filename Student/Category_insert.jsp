<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String cname=request.getParameter("C_name");
String description=request.getParameter("description");

int k=s.stmt.executeUpdate("insert into category values(null,'"+cname+"','"+description+"')");
%>
<script>
alert("inserted....");
document.location="Category_view.jsp";
</script>