<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String sid=request.getParameter("subject_id");

int k=s.stmt.executeUpdate("delete from subject where subject_id="+sid+"");
%>
<script>
alert("Deleted...");
document.location="Sub_view.jsp";
</script>