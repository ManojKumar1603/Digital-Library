<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sid=request.getParameter("sid");

int k=s.stmt.executeUpdate("delete from sem where sem_id="+sid+"");
%>
<script>
alert("Deleted...");
document.location="Sem_view.jsp";
</script>