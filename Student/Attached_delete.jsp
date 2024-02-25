<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String aid=request.getParameter("aid");

int k=s.stmt.executeUpdate("delete from attached_files where Attached_id="+aid+"");
%>
<script>
alert("Deleted...");
document.location="Attaches_view.jsp";
</script>