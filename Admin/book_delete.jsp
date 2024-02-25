<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String aid=request.getParameter("aid");

int k=s.stmt.executeUpdate("delete from book_details  where b_id="+aid+" ");
%>
<script>
alert("Deleted......");
document.location="home.jsp";
</script>