package portal;
import java.sql.*;
public class notesportal
{
   private Connection con;
   public Statement stmt;
   public String getConn()
{
   try
{
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    con=DriverManager.getConnection("Jdbc:Odbc:acedamicnotes");
     stmt=con.createStatement();
}
  catch(Exception e)
{
   System.out.println(e);
}
  return"";
}
}