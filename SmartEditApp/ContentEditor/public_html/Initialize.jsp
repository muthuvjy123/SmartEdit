<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.io.*,java.util.Properties" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <script>
     function imgLoader(){
         document.getElementById("myForm").submit();
     }
    </script>
  </head>
  
  <body>
  <%Properties props = new Properties();
  InputStream input = null;
  String RIDC_URL="Please Enter Data";
    try {
            input = getClass().getClassLoader().getResourceAsStream("resources.properties");
            
           // new FileInputStream("/resources.properties");
            // load a properties file
            props.load(input);
             if(props.getProperty("RIDC_URL")!=null){
                RIDC_URL=props.getProperty("RIDC_URL");
            }
 	} catch (Exception ex) {
		ex.printStackTrace();
	} finally {
		if (input != null) {
			try {
				input.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
 
  
   
  %>
     <form method="post" action="controller" id="myForm">
      
     </br>
     <h1>Fill the Initializing Form</h1></br></br>
     IDC_URL :: <input type="text" value="<%=RIDC_URL%>" name="IDC_URL" id="IDC_URL"></br></br>
            <input type="hidden" value="Initialize" name="type" id="type">
            <input type="button" value="Set This" onclick="imgLoader()">
     </form>
  </body>
 </html> 