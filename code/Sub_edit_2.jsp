<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sid=request.getParameter("sid");
String sub_name=request.getParameter("sub_name");
String course_id=request.getParameter("course_id");
String sem=request.getParameter("sem");


int k=s.stmt.executeUpdate("Update Subject set sub_name='"+sub_name+"',course_id='"+course_id+"',sem='"+sem+"' where subject_id="+sid+" ");
%>
<script>
alert("Updated....");
document.location="Sub_view.jsp";
</script>