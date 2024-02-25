<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String dept_id=request.getParameter("d_id");
String dept_name=request.getParameter("d_name");
String description=request.getParameter("description");

int k=s.stmt.executeUpdate("Update dept set dept_name='"+dept_name+"',description='"+description+"' where dept_id="+dept_id+" ");
%>
<script>
alert("Updated....");
document.location="Dept_view.jsp";
</script>