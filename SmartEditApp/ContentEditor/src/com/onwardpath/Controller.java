package com.onwardpath;



import java.io.*;


import java.security.Key;

import java.util.Date;
import java.util.Properties;


import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import oracle.stellent.ridc.IdcClient;
import oracle.stellent.ridc.IdcClientException;
import oracle.stellent.ridc.IdcClientManager;

import oracle.stellent.ridc.IdcContext;

import oracle.stellent.ridc.convenience.usersecurity.CacheId;
import oracle.stellent.ridc.convenience.usersecurity.IUserSecurityCache;
import oracle.stellent.ridc.convenience.usersecurity.impl.UserSGAccountsCache;
import oracle.stellent.ridc.convenience.usersecurity.impl.UserSGAcctAclCache;
import oracle.stellent.ridc.convenience.usersecurity.impl.UserSecurityGroupsCache;
import oracle.stellent.ridc.model.DataBinder;
import oracle.stellent.ridc.model.DataObject;
import oracle.stellent.ridc.model.DataResultSet;
import oracle.stellent.ridc.model.TransferFile;
import oracle.stellent.ridc.protocol.ServiceResponse;

import org.docx4j.convert.in.xhtml.XHTMLImporterImpl;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;


import org.docx4j.openpackaging.parts.WordprocessingML.NumberingDefinitionsPart;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;


public class Controller extends HttpServlet{
    final static Logger log = Logger.getLogger(Controller.class);
    private static final long serialVersionUID = 1L;
    private String CommonSmartEditPath=System.getProperty("java.io.tmpdir");
    private String ResourcesProperties=CommonSmartEditPath+"resources.properties";
    private static final String ALGO = "AES";
    private static final byte[] keyValue = 
        new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't','S', 'e', 'c', 'r','e', 't', 'K', 'e', 'y' };

    public Controller() {
                   super();               
           }
   
   
        
    public void doGet (HttpServletRequest request,HttpServletResponse response) 
                            throws ServletException, IOException 
            {
               
                String type= "";
                if(request.getParameter("type")!=null){
                     type= request.getParameter("type");
                }
                if(type.equalsIgnoreCase("GetUserCall")){
                    response.setHeader("Cache-Control", "no-cache");
                    response.setHeader("Pragma", "no-cache");
                    String id=request.getParameter("dID");
                    File newFile = new File(getSmartEditProperty("PROP_FILE_PATH")+"sample.properties");
                    InputStream input = new FileInputStream(newFile);
                    Properties props = new Properties();
                    props.load(input);
                    StringBuffer UserInfo = new StringBuffer(props.getProperty("UserInfo"));
                    String newUserInfo = " ";
                    for (int i=1;i<UserInfo.toString().split(" "+id + "__").length;i++){
                        if(newUserInfo.trim().isEmpty()){
                            newUserInfo = UserInfo.toString().split(" "+id + "__")[i].split(",")[0];
                        }else{
                           newUserInfo = newUserInfo +","+ UserInfo.toString().split(" "+id + "__")[i].split(",")[0];
                        }
                    }
                    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
                    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                    response.getWriter().write(newUserInfo); 
                } else if(type.equalsIgnoreCase("Back_operation")){
                    Controller ce= new Controller();
                    String dID=request.getParameter("dID");
                    String userVal=request.getParameter("userVal");
                    Date currentTime= new Date();
                    String message = String.format("Currently time is %tr on %tD.",currentTime, currentTime);
                    log.info(message+": dID::"+dID+"  userVal::"+userVal);
                    ce.RemoveUserData(dID,userVal);
                    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
                    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                    response.getWriter().write("Success");
                }else if(type.equalsIgnoreCase("ReConnect")){
                    Controller ce= new Controller();
                    String dID=request.getParameter("dID");
                    String userVal=request.getParameter("userVal");
                    ce.ConnectUserData(dID,userVal);
                    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
                    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                    response.getWriter().write("Success");
                }
            }
   
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String type= "";
                if(request.getParameter("type")!=null){
                     type= request.getParameter("type");
                    
                }
        
                if(type.equalsIgnoreCase("ContentEditor")){
                    Controller ce= new Controller();
                    String Extension=request.getParameter("Extension");
                    if(Extension.contains("html")){
                        ce.EditContent(request,response);
                    }else if(Extension.contains("doc")){
                        ce.EditContentByDoc(request,response); 
                    }
                    RequestDispatcher rd=request.getRequestDispatcher("/SuccessPage.jsp");
                    rd.forward(request, response); 
                }else if(type.equalsIgnoreCase("LoadContent")){
                    String JSPFile="/ContentEditor.jsp";
                    Controller ce= new Controller();
                    ce.LoadContent(request,response);                    
                    RequestDispatcher rd=request.getRequestDispatcher(JSPFile);
                    rd.forward(request, response); 
                } else if(type.equalsIgnoreCase("Back_operation")){
                    String http_URL=request.getParameter("http_URL");
                    RequestDispatcher rd=request.getRequestDispatcher(http_URL);
                    rd.forward(request, response); 
                }
                
      
    }
        
    
    
    public String getSmartEditProperty(String key){
       String data=null;
        try{
            File configFile = new File(ResourcesProperties);
            FileReader reader = new FileReader(configFile);
            Properties props = new Properties();
            props.load(reader);
            data = props.getProperty(key);
            
         }catch(Exception e){
            log.error(e.getMessage());
        }
        return data;
    }
    
    public void ConnectUserData(String id,String userVal){
    
        try{
            File newFile = new File(getSmartEditProperty("PROP_FILE_PATH")+"sample.properties");
            //log.info(getSmartEditProperty("PROP_FILE_PATH"));
            if(!newFile.exists()) {
                newFile.createNewFile();
            }
            InputStream input = new FileInputStream(newFile);
            Properties props = new Properties();
            props.load(input);
            if(props.getProperty("UserInfo")==null){
                 props.setProperty("UserInfo", ",");
                 OutputStream out = new FileOutputStream( newFile );
                 props.store(out, "");
             }
            StringBuffer UserInfo = new StringBuffer(props.getProperty("UserInfo"));
            int UserInfoIndex=UserInfo.indexOf(" "+id + "__" + userVal+",");
            log.info("UserInfo::"+UserInfo+"     UserInfoIndex:::"+UserInfoIndex+" userVal:::"+id + "__" + userVal+",");
            if(UserInfoIndex==-1){
                UserInfo.insert(1, " "+ id + "__"+userVal+",");
                props.setProperty("UserInfo", UserInfo.toString());
                OutputStream out = new FileOutputStream( newFile );
                props.store(out, "");
            }
            input.close();
            
        }catch(Exception e){
            log.error(e.getMessage());
        }
    }
    public int getDocPermission (String id,String userVal,String passwordVal) 
    throws ServletException, IOException {
           int access =0;
        try{
               log.info("id::"+id+" userVal:"+userVal+" passwordVal::"+passwordVal);
               IdcClientManager m_clientManager = new IdcClientManager ();
               String http_URL = getSmartEditProperty("http_URL");
            String SUPERUSERNAME = getSmartEditProperty("SUPERUSERNAME");
            String SUPERPASSWORD = getSmartEditProperty("SUPERPASSWORD");
               IdcClient m_client = m_clientManager.createClient(http_URL+"/idcplg");   
               log.info("http_URL::"+http_URL+"  SUPERUSERNAME ::"+SUPERUSERNAME+" SUPERPASSWORD::"+SUPERPASSWORD);
               //RIDC superuser context
               IdcContext m_superuser = new IdcContext(SUPERUSERNAME, SUPERPASSWORD);
               //Examples of the three concrete cache classes
               //IUserSecurityCache m_SGCache = new UserSecurityGroupsCache (m_client, 20, 1000);
               //IUserSecurityCache m_SGAcctCache = new UserSGAccountsCache (m_client, 20, 1000, 20000);
               IUserSecurityCache m_SGAcctAclCache = new UserSGAcctAclCache(m_client, 20, 1000, 20000, m_superuser);
               DataBinder dataBinder = m_client.createBinder ();
               dataBinder.putLocal ("IdcService", "DOC_INFO");
               dataBinder.putLocal ("dID", id); 
               ServiceResponse response1 = m_client.sendRequest(m_superuser, dataBinder);
                dataBinder = response1.getResponseAsBinder();
               //Get the document information (typically in the first row of DOC_INFO)
                DataObject docInfo = dataBinder.getResultSet ("DOC_INFO").getRows ().get (0);
               //IdcContext context = new IdcContext("balase", "Onward@123");
               IdcContext context = new IdcContext(userVal, passwordVal);
               CacheId acme1 = new CacheId (context.getUser (), context);
               //Get the access level for this document by this user
               access = m_SGAcctAclCache.getAccessLevelForDocument (acme1, docInfo);
               //System.out.println("access 11::"+access);
            //access level in Content Server form (1=Read, 3=Write, 7=Delete)
        }catch(Exception e){
            log.error(e.getMessage());
        }
        return access;
       }
        
    protected void LoadContent(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
        
        String id=request.getParameter("dID");
        log.info("id::"+id);
        String Extension=request.getParameter("Extension");
        log.info("Extension::"+Extension);
        StringBuilder FinalData= new StringBuilder();
        String userVal =request.getParameter("userVal").toString();
        //String passwordVal =request.getParameter("passwordVal").toString(); 
        
          try{
                    Controller ce= new Controller();
                    ce.ConnectUserData(id,userVal);
                    IdcClientManager myIdcClientManager = new IdcClientManager();
                    String RIDC_URL = getSmartEditProperty("RIDC_URL");
                    IdcClient myIdcClient = myIdcClientManager.createClient(RIDC_URL);
                    IdcContext myIdcContext = new IdcContext(userVal); 
                    DataBinder binder = myIdcClient.createBinder ();
                    if(Extension.contains("html")){
                        binder.putLocal ("IdcService", "GET_FILE");
                    }else{
                        binder.putLocal ("IdcService", "GET_DYNAMIC_CONVERSION");
                        binder.putLocal("IsJava","0");
                    }
                    binder.putLocal ("dID", id);
                    ServiceResponse myServiceResponse = myIdcClient.sendRequest(myIdcContext, binder);
                    InputStream stream = myServiceResponse.getResponseStream ();
                    
                    /** Update xSmartEdit Metadata Starts Here**/
                    /*binder.putLocal("IdcService", "DOC_INFO");
                    binder.putLocal("dID", id);
                     myServiceResponse = myIdcClient.sendRequest(myIdcContext, binder);
                    binder = myServiceResponse.getResponseAsBinder();
                    DataObject myDataObject1 = binder.getLocalData();
                    String dDocName = myDataObject1.get("dDocName");  
                    log.info("dDocName::"+dDocName);
                    binder.putLocal ("dDocName", dDocName);
                    binder.putLocal ("IdcService", "UPDATE_DOCINFO");
                    binder.putLocal ("xSmartEdit", "InProgress");
                    myServiceResponse = myIdcClient.sendRequest(myIdcContext, binder);
                    binder = myServiceResponse.getResponseAsBinder();*/
                    /** Update xSmartEdit Metadata Ends Here**/
                    
                    BufferedReader in = new BufferedReader(new InputStreamReader(stream));
                    String inputLine;
                    
                    while ((inputLine = in.readLine()) != null){
                          FinalData.append(inputLine);
                    }
                    in.close();
                    stream.close();
                  
                }catch(Exception e){
                    log.error(e.getMessage());
                }
        request.setAttribute("FinalData", FinalData.toString());
        request.setAttribute("dID", id);
        request.setAttribute("Extension", Extension);
        request.setAttribute("userVal", userVal);
    }
    
    public void RemoveUserData(String dID,String Userval){
        
        try{
            File newFile = new File(getSmartEditProperty("PROP_FILE_PATH")+"sample.properties");
            InputStream input = new FileInputStream(newFile);
            Properties props = new Properties();
            props.load(input);
            StringBuffer UserInfo = new StringBuffer(props.getProperty("UserInfo"));
            String fulldata=" "+dID + "__" + Userval+",";
            int lengthh=fulldata.length();
            int StartVal=UserInfo.indexOf(" "+dID + "__" + Userval+",");
            int endVal=StartVal+lengthh;
            UserInfo= UserInfo.delete(StartVal, endVal);
            log.info("UserInfo::"+UserInfo);
            props.setProperty("UserInfo", UserInfo.toString());
            OutputStream out = new FileOutputStream( newFile );
            props.store(out, "");
        }catch(Exception e){
            log.error(e.getMessage());
        }
        
    }
    public void EditContentByDoc(HttpServletRequest request, HttpServletResponse response){
                 log.info("Inside EditContentByDoc");
                 
        try{
            String HTMLValue = request.getParameter("sqlField").toString();
            HTMLValue=HTMLValue.replaceAll("&", "&amp;")
                     .replaceAll("<br>", "<br></br>");
            log.info("xhtml after modified:::"+HTMLValue);
            IdcClientManager myIdcClientManager = new IdcClientManager();
                String RIDC_URL = getSmartEditProperty("RIDC_URL");
            IdcClient myIdcClient = myIdcClientManager.createClient(RIDC_URL);
            String userVal =request.getParameter("userVal").toString(); 
           // String passwordVal =request.getParameter("passwordVal").toString();
            String dID =request.getParameter("dID").toString();
            IdcContext myIdcContext = new IdcContext(userVal);
            Controller ce= new Controller();
            ce.RemoveUserData(dID,userVal);
            /** Checkout start here **/
            ServiceResponse myServiceResponse = null;
                
            try {
                     String usrDir=System.getProperty("user.dir");
                
                     log.info("usrDir:::"+usrDir);
                     WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
                     NumberingDefinitionsPart ndp = new NumberingDefinitionsPart();
                     wordMLPackage.getMainDocumentPart().addTargetPart(ndp);
                     ndp.unmarshalDefaultNumbering();
                     XHTMLImporterImpl XHTMLImporter1 = new XHTMLImporterImpl(wordMLPackage);
                     wordMLPackage.getMainDocumentPart().getContent()
                                   .addAll(XHTMLImporter1.convert(HTMLValue, null));
                      wordMLPackage.save(new File(usrDir + "/html_output1.docx"));
                      wordMLPackage=null;
                      log.info("done");
                      
                      DataBinder myResponseDataBinder = null;    
                      DataBinder myRequestDataBinder = myIdcClient.createBinder();
                      myRequestDataBinder.putLocal("IdcService", "DOC_INFO");
                      myRequestDataBinder.putLocal("dID", dID);
                      myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                      myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                      DataObject myDataObject1 = myResponseDataBinder.getLocalData();
                      String dDocName = myDataObject1.get("dDocName");  
                      log.info("dDocName::"+dDocName);
                      myRequestDataBinder.putLocal("IdcService", "CHECKOUT_BY_NAME");
                      myRequestDataBinder.putLocal("dID", dID);
                      myRequestDataBinder.putLocal("dDocName", dDocName);
                      myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                      myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                     
                    
                    /** Doc_INFO Starts here**/
                     myRequestDataBinder.putLocal("IdcService", "DOC_INFO_BY_NAME");
                     myRequestDataBinder.putLocal("dID", dID);
                     myRequestDataBinder.putLocal("dDocName", dDocName);
                     myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                     myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                     DataResultSet myDataResultSet = myResponseDataBinder.getResultSet("DOC_INFO");
                     String myContentTitle="";
                     String myUsernameInSession="";
                     String dOriginalName="";
                    
                    
                     for (DataObject myDataObject : myDataResultSet.getRows()) {
                         myContentTitle= myDataObject.get("dDocTitle");
                         myUsernameInSession= myDataObject.get("dDocAuthor");
                         request.setAttribute("dDocTitle", myDataObject.get("dDocTitle"));
                         request.setAttribute("dDocAuthor", userVal);
                         dOriginalName = myDataObject.get("dOriginalName");
                         dOriginalName=dOriginalName.split("[ .]")[0];
                         log.info( dOriginalName);
                         myRequestDataBinder.putLocal("dDocName", myDataObject.get("dDocName"));
                         myRequestDataBinder.putLocal("dSecurityGroup", myDataObject.get("dSecurityGroup"));
                         //myRequestDataBinder.putLocal("dDocAuthor", userVal);
                         myRequestDataBinder.putLocal("dDocType", myDataObject.get("dDocType"));
                         myRequestDataBinder.putLocal("dDocTitle", myDataObject.get("dDocTitle"));
                         int dRevisionID=Integer.parseInt( myDataObject.get("dRevisionID"))+1;
                         String dRevisionID_str=dRevisionID+"" ;   
                         log.info( "dRevisionID_str::"+dRevisionID_str);
                         myRequestDataBinder.putLocal("dRevisionID", dRevisionID_str);
                     }
                

                        
                     /** Check in Starts Here **/
                        
                     InputStream myInputStream = new FileInputStream(new File(usrDir+ "/html_output1.docx"));
                     if (myInputStream != null) {
                        log.info("In uploadFile - Title: " + myContentTitle);
                        log.info("In uploadFile - Ddocname: " + myRequestDataBinder.getLocal("dDocName"));
                        myRequestDataBinder.putLocal("IdcService", "CHECKIN_UNIVERSAL");
                        myRequestDataBinder.putLocal("doFileCopy", "true");
                        String Extension=request.getParameter("Extension");
                        myRequestDataBinder.putLocal("dFormat", "application/msword");
                        myRequestDataBinder.addFile("primaryFile", new TransferFile(myInputStream, dOriginalName+"."+Extension, HTMLValue.length(), "application/msword"));
                        myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                        myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                        DataObject myDataObject = myResponseDataBinder.getLocalData();
                        request.setAttribute("dID", myDataObject.get("dID"));
                        request.setAttribute("dDocName", myDataObject.get("dDocName"));
                        log.info("File uploaded successfully");
                    }
                    myInputStream.close();
                    myServiceResponse.close();
                  log.info("File checked out successfully");
                } catch (IdcClientException idcce) {
                  log.error("IDC Client Exception occurred. Unable to checkout file. Message: " + idcce.getMessage() + ", Stack trace: ");
                  if(myServiceResponse!=null){
                      myServiceResponse.close();
                  }
                } catch (Exception e) {
                  log.error("Exception occurred. Unable to check out file. Message: " + e.getMessage() + ", Stack trace: ");
                   if(myServiceResponse!=null){
                        myServiceResponse.close();
                    }
                } finally {
                  if (myServiceResponse != null) {
                    myServiceResponse.close();
                  }
                }  
            
            } catch (Exception e) {
               log.error(e.getMessage());
               
            }
            }
             
    
	
	public void EditContent(HttpServletRequest request, HttpServletResponse response){
            
            try{
                String HTMLValue = request.getParameter("sqlField").toString();
                IdcClientManager myIdcClientManager = new IdcClientManager();
                String RIDC_URL = getSmartEditProperty("RIDC_URL");
                IdcClient myIdcClient = myIdcClientManager.createClient(RIDC_URL);
                String userVal =request.getParameter("userVal").toString();
                //String passwordVal =request.getParameter("passwordVal").toString(); 
                String dID =request.getParameter("dID").toString();
                IdcContext myIdcContext = new IdcContext(userVal);
                Controller ce= new Controller();
                ce.RemoveUserData(dID,userVal);
                
                /** Checkout start here **/
                ServiceResponse myServiceResponse = null;
                  
                try {
                          DataBinder myResponseDataBinder = null;    
                          DataBinder myRequestDataBinder = myIdcClient.createBinder();
                          myRequestDataBinder.putLocal("IdcService", "DOC_INFO");
                          myRequestDataBinder.putLocal("dID", dID);
                          myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                          myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                          DataObject myDataObject1 = myResponseDataBinder.getLocalData();
                          String dDocName = myDataObject1.get("dDocName");  
                          log.info("dDocName::"+dDocName);
                          myRequestDataBinder.putLocal("IdcService", "CHECKOUT_BY_NAME");
                          myRequestDataBinder.putLocal("dID", dID);
                          myRequestDataBinder.putLocal("dDocName", dDocName);
                          myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                          myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                         
                        
                        /** Doc_INFO Starts here**/
                         myRequestDataBinder.putLocal("IdcService", "DOC_INFO_BY_NAME");
                         myRequestDataBinder.putLocal("dID", dID);
                         myRequestDataBinder.putLocal("dDocName", dDocName);
                         myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                         myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                         DataResultSet myDataResultSet = myResponseDataBinder.getResultSet("DOC_INFO");
                         String myContentTitle="";
                         String myUsernameInSession="";
                         String dOriginalName="";
                        
                        
                         for (DataObject myDataObject : myDataResultSet.getRows()) {
                             myContentTitle= myDataObject.get("dDocTitle");
                             myUsernameInSession= myDataObject.get("dDocAuthor");
                             request.setAttribute("dDocTitle", myDataObject.get("dDocTitle"));
                             request.setAttribute("dDocAuthor", userVal);
                             dOriginalName = myDataObject.get("dOriginalName");
                             dOriginalName=dOriginalName.split("[ .]")[0];
                             log.info( dOriginalName);
                             myRequestDataBinder.putLocal("dDocName", myDataObject.get("dDocName"));
                             myRequestDataBinder.putLocal("dSecurityGroup", myDataObject.get("dSecurityGroup"));
                             //myRequestDataBinder.putLocal("dDocAuthor", userVal);
                             myRequestDataBinder.putLocal("dDocType", myDataObject.get("dDocType"));
                             myRequestDataBinder.putLocal("dDocTitle", myDataObject.get("dDocTitle"));
                             int dRevisionID=Integer.parseInt( myDataObject.get("dRevisionID"))+1;
                             String dRevisionID_str=dRevisionID+"" ;   
                             log.info( "dRevisionID_str::"+dRevisionID_str);
                             myRequestDataBinder.putLocal("dRevisionID", dRevisionID_str);
                         }
                    

                            
                         /** Check in Starts Here **/
                         InputStream myInputStream = new ByteArrayInputStream(HTMLValue.getBytes("UTF-8")); 
                         if (myInputStream != null) {
                            myRequestDataBinder.putLocal("IdcService", "CHECKIN_UNIVERSAL");
                            myRequestDataBinder.putLocal("doFileCopy", "true");
                            myRequestDataBinder.putLocal("dFormat", "text/html");
                            myRequestDataBinder.addFile("primaryFile", new TransferFile(myInputStream, dOriginalName+".html", HTMLValue.length(), "application/html"));
                            myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
                            myResponseDataBinder = myServiceResponse.getResponseAsBinder();
                            DataObject myDataObject = myResponseDataBinder.getLocalData();
                            request.setAttribute("dID", myDataObject.get("dID"));
                            request.setAttribute("dDocName", myDataObject.get("dDocName"));
                            log.info("File uploaded successfully");
                        }
                        myInputStream.close();
                        myServiceResponse.close();
                      log.info("File checked out successfully");
                    } catch (IdcClientException idcce) {
                      log.info("IDC Client Exception occurred. Unable to checkout file. Message: " + idcce.getMessage() + ", Stack trace: ");
                        if(myServiceResponse!=null){
                            myServiceResponse.close();
                        }
                    } catch (Exception e) {
                      log.error("Exception occurred. Unable to check out file. Message: " + e.getMessage() + ", Stack trace: ");
                      if(myServiceResponse!=null){
                            myServiceResponse.close();
                        }
                    } finally {
                      if (myServiceResponse != null) {
                        myServiceResponse.close();
                      }
                    }  
                
                } catch (Exception e) {
                    log.error(e.getMessage());
                }
                }
	         
	
    public static String encrypt(String Data) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        return encryptedValue;
    }

    public static String decrypt(String encryptedData) throws Exception {
        Key key = generateKey();
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
        byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
        byte[] decValue = c.doFinal(decordedValue);
        String decryptedValue = new String(decValue);
        return decryptedValue;
    }
    private static Key generateKey() throws Exception {
        Key key = new SecretKeySpec(keyValue, ALGO);
        return key;
    }

}
