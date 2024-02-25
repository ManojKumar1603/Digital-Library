<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String cid=request.getParameter("course_id");
String duration=request.getParameter("duration");
String course_name=request.getParameter("c_name");
String sem_id=request.getParameter("sem_id");

int k=s.stmt.executeUpdate("Update Course set duration='"+duration+"',course_name='"+course_name+"',sem_id='"+sem_id+"' where course_id="+cid+" ");
%>
<script>
alert("Updated....");
document.location="Course_view.jsp";
</script>