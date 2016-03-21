<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>GetPasswordPage</title>
    <script src="ckeditor/adapters/jquery.js"></script>
    <script src="js/Ajax_Jquery.js"></script>
    <script>
    $(document).keypress(function (e) {
        if (e.which == 13) {
            SubmitData();
        }
    });
    function SubmitData(){
        document.getElementById("type").value="LoadContent";
        document.getElementById("myForm").submit(); 
       }
        </script>
  </head>
  <body>
  
  <form method="post" action="controller" id="myForm">
            <textarea rows="10" cols="80" name="sqlField" id="sqlField" style="display:none"></textarea>
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
                     <td> <input type="button" value="Submit" onclick="SubmitData()"></td>
              </tr>
            </table>
   </form>
  </body>
</html>