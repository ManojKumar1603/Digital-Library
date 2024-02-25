<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String dept_name=request.getParameter("d_name");
String description=request.getParameter("description");

int k=s.stmt.executeUpdate("insert into dept values(null,'"+dept_name+"','"+description+"')");
%>
<script>
alert("inserted....");
document.location="Dept_view.jsp";
</script>