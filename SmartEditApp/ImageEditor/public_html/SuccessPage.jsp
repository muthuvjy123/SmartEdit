<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>SuccessPage</title>
    <style type="text/css">[ng-cloak]#splash{display:block!important}[ng-cloak]{display:none}#splash{display:none;position:absolute;top:45%;left:50%;width:6em;height:6em;overflow:hidden;border-radius:100%;z-index:0}@-webkit-keyframes fade{from{opacity:1}to{opacity:.2}}@keyframes fade{from{opacity:1}to{opacity:.2}}@-webkit-keyframes rotate{from{-webkit-transform:rotate(0deg)}to{-webkit-transform:rotate(360deg)}}@keyframes rotate{from{transform:rotate(0deg)}to{transform:rotate(360deg)}}#splash::after,#splash::before{content:'';position:absolute;top:0;left:0;width:100%;height:100%}#splash::before{background:linear-gradient(to right,green,#ff0);-webkit-animation:rotate 2.5s linear infinite;animation:rotate 2.5s linear infinite}#splash::after{background:linear-gradient(to bottom,red,#00f);-webkit-animation:fade 2s infinite alternate,rotate 2.5s linear reverse infinite;animation:fade 2s infinite alternate,rotate 2.5s linear reverse infinite}#splash-spinner{position:absolute;width:100%;height:100%;z-index:1;border-radius:100%;box-sizing:border-box;border-left:.5em solid transparent;border-right:.5em solid transparent;border-bottom:.5em solid rgba(255,255,255,.3);border-top:.5em solid rgba(255,255,255,.3);-webkit-animation:rotate .8s linear infinite;animation:rotate .8s linear infinite}</style>
        <link rel="stylesheet" href="assets/css/main.css?v5">
        
        
  </head>
  <body id="body" style="background-image: url(assets/images/viewport-bg.png);">
  
 <div >
  <div align="center" >
  <h1>Image Editor</h1>
  </div>
  <div align="center">
  
  <h2>Image Successfully Updated!!!</h2>
 </br>
  <a href="http://lab01.onwardpath.com/cs/idcplg?IdcService=DOC_INFO&dID=<%=request.getAttribute("dID")%>&dDocName=<%=request.getAttribute("dDocName")%>"x >
  Click Here</a> to go to Content Information Page 
  </div>
  </div>

  </body>
</html>