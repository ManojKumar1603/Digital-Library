<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String did=request.getParameter("dept_id");

int k=s.stmt.executeUpdate("delete from dept where dept_id="+did+"");
%>
<script>
alert("Deleted...");
document.location="Dept_view.jsp";
</script>