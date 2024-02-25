<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String attached_id=request.getParameter("attached_id");
String attached_by=request.getParameter("A_By");
String attached_date=request.getParameter("A_Date");
String attached_file=request.getParameter("A_Files");
String category_id=request.getParameter("C_ID");
String key=request.getParameter("key");
String status=request.getParameter("status");

int k=s.stmt.executeUpdate("update attached_files set attached_by='"+attached_by+"',attached_date='"+attached_date+"',attached_file='"+attached_file+"',category_id='"+category_id+"',`key`='"+key+"',status='"+status+"' where attached_id="+attached_id+" ");
%>
<script>
alert("Updated....");
document.location="Attaches_view.jsp";
</script>