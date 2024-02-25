<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("c_id");

int k=s.stmt.executeUpdate("delete from Category where c_id="+id+"");
%>
<script>
alert("Deleted...");
document.location="Category_view.jsp";
</script>