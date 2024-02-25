<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String cid=request.getParameter("c_id");
String cname=request.getParameter("C_name");
String description=request.getParameter("description");

int k=s.stmt.executeUpdate("Update category set category_name='"+cname+"',description='"+description+"' where c_id="+cid+" ");
%>
<script>
alert("Updated....");
document.location="Category_view.jsp";
</script>