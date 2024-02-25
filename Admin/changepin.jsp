<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>

<%

	String old=request.getParameter("oldpassword");
	String pnew=request.getParameter("newpassword");
	String pconf=request.getParameter("confirmpassword");

	String uname=session.getAttribute("uname").toString();

	ResultSet rs=s.stmt.executeQuery("select * from login where username='"+uname+"' and password='"+old+"'");
	if(rs.next())
	{

		if(pnew.equals(pconf))
		{
			int k=s.stmt.executeUpdate("update login set password='"+pnew+"' where username='"+uname+"'");
%>

<script>
		alert("password is Changed");
		document.location="../login.jsp";
</script>

<%
		}
		else
		{
%>

<script>
		alert("Check Conf password miss match");
		history.back();
</script>

<%
		}
		}
		else
		{
%>

<script>
		alert("Old password miss match");
		history.back();
</script>

<%
	}

%>