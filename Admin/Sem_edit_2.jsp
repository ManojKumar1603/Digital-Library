<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sid=request.getParameter("sem_id");
String sem_name=request.getParameter("sem_name");
String course_id=request.getParameter("course_id");

int k=s.stmt.executeUpdate("Update Sem set sem_name='"+sem_name+"',course_id='"+course_id+"' where sem_id="+sid+"");
%>
<script>
alert("Updated....");
document.location="Sem_view.jsp";
</script>