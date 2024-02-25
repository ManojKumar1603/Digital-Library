<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sem_name=request.getParameter("sem_name");
String course_id=request.getParameter("course_id");

int k=s.stmt.executeUpdate("insert into Sem values(null,'"+sem_name+"','"+course_id+"')");
%>
<script>
alert("inserted....");
document.location="Sem_view.jsp";
</script>