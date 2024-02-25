<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String book_name=request.getParameter("book_name");
String author=request.getParameter("author");
String publisher=request.getParameter("publisher");
String upload_date=request.getParameter("upload_date");
String sem=request.getParameter("sem");
String type=request.getParameter("type");
//String status=request.getParameter("status");

int k=s.stmt.executeUpdate("insert into book_details values(null,'"+book_name+"','"+author+"','"+publisher+"','"+upload_date+"','new','"+sem+"','"+type+"' )");
%>
<script>
alert("inserted....upload Book Now..");
document.location="book_details_view.jsp";
</script>