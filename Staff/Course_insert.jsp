<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String duration=request.getParameter("duration");
String course_name=request.getParameter("c_name");
String sem_id=request.getParameter("s_id");

int k=s.stmt.executeUpdate("insert into Course values(null,'"+duration+"','"+course_name+"','"+sem_id+"')");
%>
<script>
alert("inserted....");
document.location="Course_view.jsp";
</script>