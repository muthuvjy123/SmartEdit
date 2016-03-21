<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>

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
  
     <form method="post" action="controller" id="myForm">
            <input type="text" value="" name="dID" id="dID">
            <input type="hidden" value="ImageTest" name="type" id="type">
            <input type="button" value="imgLoader" onclick="imgLoader()">
     </form>
  </body>
 </html> 