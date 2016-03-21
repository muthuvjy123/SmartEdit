<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.io.BufferedReader,java.io.InputStreamReader,java.net.URL,java.util.*,java.io.*" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>ContentEditor</title>
    
    <script src="ckeditor/ckeditor.js"></script>
    <script src="ckeditor/adapters/jquery.js"></script>
    <script src="js/Ajax_Jquery.js"></script>
    <script>
    
    
    
    
    
    function Back_Operation(){
        var http_URL=document.getElementById("http_URL").value;
        var dID=document.getElementById("dID").value;
        var Final_URL = http_URL+"/idcplg?IdcService=DOC_INFO&dID="+dID;
        window.location.href=Final_URL;
    }
 
function updateDiv(){
//alert("Test");
        var editorText = CKEDITOR.instances.editor1.getData();
        editorText="<!DOCTYPE html><html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8'></meta></head><body>"+
        editorText+"</body></html>";
        alert(editorText);
        $('#sqlField').html(editorText);
        document.getElementById("myForm").submit();
    } 
   function LoadDiv(){
    
    var r = confirm("Are you sure to reload the content this may loss your current changes!!!");
    if (r == true) {
        
        document.getElementById("type").value="LoadContent";
        document.getElementById("myForm").submit(); 
    } 
       
   }
    </script>
    
  </head>
  <body>
 
  
  
  <%
     String CommonSmartEditPath=System.getProperty("java.io.tmpdir");
    String ResourcesProperties=CommonSmartEditPath+"resources.properties";
          String RIDC_URL =null;
          String http_URL =null;
        try{
            File configFile = new File(ResourcesProperties);
            FileReader reader = new FileReader(configFile);
            Properties props = new Properties();
            props.load(reader);
            RIDC_URL = props.getProperty("RIDC_URL");
            http_URL = props.getProperty("http_URL");
            
         }catch(Exception e){
            System.out.println(e.getMessage());
        }
    //log.info("http_URL 123::: " + rb.getString("http_URL"));
    //String RIDC_URL = rb.getString("RIDC_URL");
    //String http_URL = rb.getString("http_URL");
  %>
  
   <form method="post" action="controller" id="myForm">
            <textarea rows="10" cols="80" name="sqlField" id="sqlField" style="display:none"></textarea>
            <input type="hidden" value='<%=request.getAttribute("dID")%>' name="dID" id="dID">
            <input type="hidden" value="<%=http_URL%>" name="http_URL" id="http_URL">
            <input type="hidden" value="<%=RIDC_URL%>" name="RIDC_URL" id="RIDC_URL">
            <input type="hidden" value='<%=request.getAttribute("userVal")%>' name="userVal" id="userVal">
            <input type="hidden" value='<%=request.getAttribute("Extension")%>' name="Extension" id="Extension">
            <input type="hidden" value="ContentEditor" name="type" id="type">
           
            
            
        </form>
  <table>
  <tr>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  </tr>
   <tr>
  <td>&nbsp;</td>
  </tr>
  <tr>
  <td>&nbsp;</td>
  </tr>
   
  <tr><td>
  <%
    String FinalData=request.getAttribute("FinalData").toString();
    
   if(FinalData!=null && !FinalData.equals("")){
   //log.info(FinalData);
  %>
  
 
    <div id="editor1" name="editor1" contenteditable="true" class="ckeditor" >
        <%=FinalData%>
    </div>
<script>
 

/*CKEDITOR.config.toolbarGroups = [
    { name: 'others' },
    { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
    { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
    { name: 'editing',     groups: [ 'find', 'selection' ] },    
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
    '/',
    { name: 'paragraph',   groups: [ 'list', 'indent', 'align' ] },
    { name: 'links' },
    { name: 'insert' },
    '/',
    { name: 'styles' },
    { name: 'colors' },
    { name: 'tools' }
    
];*/
CKEDITOR.config.extraPlugins = 'inlinesave,inlinecancel,inlineback';
CKEDITOR.config.toolbar=[

    ['Inlinesave','Inlinecancel','Inlineback','-','Templates'],
    ['Cut','Copy','Paste','PasteText','PasteWord','-','Print'],
    ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
   
   ['Bold','Italic','Underline','StrikeThrough','-','Subscript','Superscript'],
   
   ['NumberedList','BulletedList','-','Outdent','Indent'],
   '/',
   ['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
   ['Link','Unlink','Anchor'],
   ['Image','Flash','Table'],
   
   ['Style','FontFormat','FontName','FontSize'],
   ['TextColor','BGColor','ShowBlocks']
   


];



            
</script>

  <%}else{%>
  <div>
  
  <h2>No Data to Load !!! </h2>
  
  </div>
<%}%> 
</td>
</tr>
</table>


<script src="js/Jquery_1.11.1.js"></script>
<script src="js/FileSaver.js"></script>
<script src="js/jquery.wordexport.js"></script>
<script>




  

function ExportAsWord(){
//alert("Hi");
    $("#editor1").wordExport();
}
</script>
   
        
       
  
  </body>
</html>