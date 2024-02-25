<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String aid=request.getParameter("aid");

int k=s.stmt.executeUpdate("update  book_details set file='approved' where b_id="+aid+"");
%>
<script>
alert("Approved....");
document.location="approve_book_notes.jsp";
</script>