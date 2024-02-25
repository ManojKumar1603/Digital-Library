<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String cid=request.getParameter("course_id");

int k=s.stmt.executeUpdate("delete from course where course_id="+cid+"");
%>
<script>
alert("Deleted...");
document.location="Course_view.jsp";
</script>