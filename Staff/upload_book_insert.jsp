<%@page import="java.io.*"%>
			<%@page import="java.net.*"%>					
<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<%@page import="java.net.*"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id =session.getAttribute("book_id").toString();
String book_name=session.getAttribute("book_name").toString();

    String saveFile="";

    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
   }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    File ff = new File(getServletContext().getRealPath("/")+"notes_portal/books/"+saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
    
	//int k=s2.stmt.executeUpdate("insert into synopsis_files values('"+id+"','"+saveFile+"')");
int k1=s.stmt.executeUpdate("update book_details set file='"+saveFile+"' where b_id='"+id+"' ");


	out.println("You have successfully uploaded the file:"+id);
    
    
	fileOut.close();
    }
	
	ResultSet rs=s.stmt.executeQuery("select * from  user_registration");
  while(rs.next())
  {
  
 String mob=rs.getString("contact_no");

	session.removeAttribute("id");
	String smsurl="http://trans.vwgsms.com/api/mt/SendSMS?user=smsdemo&password=emo1234&senderid=VENTUR&channel=Trans&DCS=0&flashsms=0&number="+mob+"&text=New+Book+Is+Uploaded+Book+Name+"+book_name+"+Please+visit+your+Notes+portal+Thank+you&route=6";
//String smsurl="http://www.vwingsgroup.com/asms/sendsms.php?username=vwg&password=vwg123&mob="+mob+"&msg=Your+verification+pin+is+"+gpin+"+Please+verify+by+entering+this+pin";
 try
  {
     URL u1 = new URL(smsurl);
    
     String ss="";
  InputStream is1 = u1.openStream();

   DataInputStream dis1 = new DataInputStream(new BufferedInputStream(is1));

   while ((ss = dis1.readLine()) != null) 
	{
       // out.println(s);
	  
         }

	 is1.close();
   }
   catch(Exception e){}

{

}


 }
  

%>
<script>
alert("You have successfully uploaded the Books:");
document.location="book_details_view.jsp";
</script>