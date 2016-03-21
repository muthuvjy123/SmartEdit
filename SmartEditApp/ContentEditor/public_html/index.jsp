<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.io.BufferedReader,java.io.InputStreamReader,java.net.URL,java.io.*,java.util.*" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>ContentEditor</title>
    
    <script src="ckeditor/ckeditor.js"></script>
    <script src="ckeditor/adapters/jquery.js"></script>
    <script src="js/Ajax_Jquery.js"></script>
    
    <script>
    $(document).ready(function() {
    
    
   
            if(window.location.href.split('dID=')[1]!=null 
                  && window.location.href.split('dID=')[1]!='undefined'){
                    var common = window.location.href.split('Extension=')[1];
                    var Extension = common.split('&dID=')[0];
                    var dID=window.location.href.split('dID=')[1];
                    document.getElementById("dID").value=dID;
                    document.getElementById("Extension").value=Extension;
                  }
                 
                    
           
    } );
    

   
    </script>
    
    
  </head>
  <body>
 
  <div>
  
  
  <h2>Loading... </h2>
  
  </div>
 
 <form method="post" action="controller" id="myForm">
            <textarea rows="10" cols="80" name="sqlField" id="sqlField" style="display:none"></textarea>
            <input type="hidden" value="" name="dID" id="dID">
            <input type="hidden" value="" name="userVal" id="userVal">
            <input type="hidden" value="" name="Extension" id="Extension">
            <input type="hidden" value="" name="type" id="type">
             
            
        </form>
    
        
        <%File newFile = new File(System.getProperty("java.io.tmpdir")+"resources.properties");
            if(!newFile.exists()) {
                newFile.createNewFile();%>
                
                <form method="post" action="initializecontroller" id="myForm1">
                  <h1>Welcome To Smart Edit!!!</h1></br>
                  <div align="center">
                  <h2>Please Enter Below Details</h2>
                  <table >
                  <tr>
                       <td> <b>Enter/Update your RIDC URL:</b></td>  
                       <td><input type="text" name="RIDC_URL" value='' size="50"></td>
                       <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>idc://Your Host Name:Server Port</td>
                  </tr>
                  <tr>
                       <td> <b>Enter/Update your HTTP URL:</b></td>  
                       <td><input type="text" name="http_URL" value='' size="50"></td>
                       <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>http://Your Host Name/cs</td>
                  </tr>
                  <tr>
                       <td> <b>Enter/Update your Temporary Store FILE PATH:</b></td>  
                       <td><input type="text" name="PROP_FILE_PATH" value='' size="50"></td>
                       <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>C:\Windows\Temp</td>
                  </tr>
                   <tr>
                       <td> <b>Enter/Update your Super User For IDC:</b></td>  
                       <td><input type="text" name="SUPERUSERNAME" value='' size="50"></td>
                       <td> &nbsp;&nbsp;&nbsp; <b>Example:</b>Weblogic/Sysadmin</td>
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
            <%}else{%>
        
        <script>
            
            
                if(window.location.href.split('dID=')[1]!=null 
                          && window.location.href.split('dID=')[1]!='undefined'){
                            var common = window.location.href.split('Extension=')[1];
                            var Extension = common.split('&dID=')[0];
                            var common1=window.location.href.split('dID=')[1];
                            var dID=common1.split('&userVal=')[0];
                             var userVal=window.location.href.split('&userVal=')[1];
                             document.getElementById("userVal").value=userVal;
                            document.getElementById("dID").value=dID;
                            document.getElementById("Extension").value=Extension;
                          }
                document.getElementById("type").value="LoadContent";
                document.getElementById("myForm").submit(); 
             
        </script>
        
        <%}%>
        
        
  
  </body>
</html>