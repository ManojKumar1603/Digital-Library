<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<form name="form1" method="post" action="logcheck.jsp">
  <table width="338" height="309" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">Login</div></td>
    </tr>
    <tr>
      <td width="135">Username</td>
      <td width="187"><input name="username" type="text" id="username"></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input name="password" type="text" id="password"></td>
    </tr>
    <tr>
      <td>Type</td>
      <td><input name="type" type="text" id="type"></td>
    </tr>
    <tr>
      <td>Hint Question</td>
      <td><input name="hint_qst" type="text" id="hint_qst"></td>
    </tr>
    <tr>
      <td>Hint Answer</td>
      <td><input name="hint_ans" type="text" id="hint_ans"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit">
        <input type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
