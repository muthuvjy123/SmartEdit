<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.io.OutputStream,java.io.FileOutputStream,java.io.File,java.io.FileReader,java.util.Properties" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>ClientDetails</title>
  </head>
  <body>
  <%
  //Properties props = new Properties();
  System.out.println("Path of Temp directory::"+System.getProperty("java.io.tmpdir"));
                    File configFile = new File(System.getProperty("java.io.tmpdir")+"resources.properties");
                    FileReader reader = new FileReader(configFile);
                    Properties props = new Properties();
                    props.load(reader);
                   // String RIDC_URL = props.getProperty("RIDC_URL");
  %>
  <form method="post" action="controller" id="myForm">
      <h1>Welcome To Smart Edit!!!</h1></br>
      <div align="center">
      <table >
      <tr>
           <td> <b>Enter/Update your Property File Path URL:</b></td>  
           <td><input type="text" name="RIDC_URL" value='<%=props.getProperty("PROP_FILE_PATH")%>' size="50"></td>
           <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>C:\Windows\TEMP\</td>
      </tr>
      <tr>
           <td> <b>Enter/Update your RIDC URL:</b></td>  
           <td><input type="text" name="RIDC_URL" value='<%=props.getProperty("RIDC_URL")%>' size="50"></td>
           <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>idc://Your Host Name:Server Port</td>
      </tr>
      <tr>
           <td> <b>Enter/Update your HTTP URL:</b></td>  
           <td><input type="text" name="http_URL" value='<%=props.getProperty("http_URL")%>' size="50"></td>
           <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>http://Your Host Name/cs</td>
      </tr>
      <tr>
           <td> &nbsp;&nbsp;</td>  
           <td><input type="submit" value='Submit'></td>
           <td> &nbsp;&nbsp;</td>
      </tr>
      </table>
      </div>
      <input type="hidden" value="ClientDetails" name="type" id="type">
  </form>
  
  </body>
</html>