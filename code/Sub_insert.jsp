<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sub_name=request.getParameter("sub_name");
String course_id=request.getParameter("course_id");
String sem=request.getParameter("sem");


int k=s.stmt.executeUpdate("insert into Subject values(null,'"+sub_name+"','"+course_id+"','"+sem+"')");
%>
<script>
alert("inserted....");
document.location="Sub_view.jsp";
</script>