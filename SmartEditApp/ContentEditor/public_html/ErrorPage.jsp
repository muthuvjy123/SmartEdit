<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>ErrorPage</title>
    <script src="ckeditor/adapters/jquery.js"></script>
    <script src="js/Ajax_Jquery.js"></script>
    <script>
    $(document).keypress(function (e) {
        if (e.which == 13) {
            SubmitData1();
        }
    });
    function SubmitData1(){
        document.getElementById("type").value="LoadContentFromErrorPage";
        document.getElementById("myForm").submit(); 
       }
        </script>
  </head>
  <body>
  
    <h1>Sorry!! You may not have Access to Modify this Content or your password doesn't match to our system.</h1>
    <form method="post" action="controller" id="myForm">
            <input type="hidden" value='<%=request.getAttribute("dID")%>' name="dID" id="dID">
            <input type="hidden" value='<%=request.getAttribute("userVal")%>' name="userVal" id="userVal">
            <input type="hidden" value='<%=request.getAttribute("Extension")%>' name="Extension" id="Extension">
            <input type="hidden" value="" name="type" id="type">
            <table>
               <tr>
                    <td> Please Enter Password for Security Purpose:</td>
                    <td> <input type="password" value="" name="passwordVal" id="passwordVal"></td>
              </tr>
              <tr>
                     <td> &nbsp;&nbsp;&nbsp;&nbsp;</td>
                     <td> <input type="button" value="Submit" onclick="SubmitData1()"></td>
              </tr>
            </table>
   </form>
  
  </body>
</html>