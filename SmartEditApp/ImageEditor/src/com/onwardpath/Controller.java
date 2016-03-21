package com.onwardpath;

import com.sun.xml.internal.messaging.saaj.util.Base64;

import java.awt.image.BufferedImage;

import java.io.*;


import javax.imageio.ImageIO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;


import javax.xml.bind.DatatypeConverter;

import oracle.stellent.ridc.IdcClient;
import oracle.stellent.ridc.IdcClientException;
import oracle.stellent.ridc.IdcClientManager;

import oracle.stellent.ridc.IdcContext;

import oracle.stellent.ridc.model.DataBinder;
import oracle.stellent.ridc.model.DataObject;
import oracle.stellent.ridc.model.DataResultSet;
import oracle.stellent.ridc.model.TransferFile;
import oracle.stellent.ridc.protocol.ServiceResponse;




public class Controller extends HttpServlet{
	

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
                String type= request.getParameter("type");
                
                if(type.equalsIgnoreCase("EditImage")){
                    Controller ce= new Controller();
                    ce.EditImage(request,response);
                    RequestDispatcher rd=request.getRequestDispatcher("/SuccessPage.jsp");
                    rd.forward(request, response); 
                }       
                
      
    }
	
	
	public void EditImage(HttpServletRequest request, HttpServletResponse response){
	      try {
	          String img64 = request.getParameter("sqlField").replaceAll("data:image/png;base64,", "");
	          String dID = request.getParameter("dID");
	          String dDocName = request.getParameter("dDocName");
	          byte[] decodedBytes = DatatypeConverter.parseBase64Binary(img64 );
	          IdcClientManager myIdcClientManager = new IdcClientManager();
	          IdcClient myIdcClient = myIdcClientManager.createClient("idc://lab01.onwardpath.com:4444");
	          IdcContext myIdcContext = new IdcContext("muthuv"); 
	          
	          /** Checkout start here **/
	          ServiceResponse myServiceResponse = null;
	            
	          try {
	                DataBinder myResponseDataBinder = null;    
	                DataBinder myRequestDataBinder = myIdcClient.createBinder();
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
	                 System.out.println("Id: " + myDataObject.get("dID"));
	                 System.out.println("ContentId: " + myDataObject.get("dDocName"));
	                 System.out.println("Title of content: " + myDataObject.get("dDocTitle"));
	                 System.out.println("Author: " + myDataObject.get("dDocAuthor"));
	                 System.out.println("Release date: " + myDataObject.get("dInDate"));
	                 System.out.println("Total rows: " + myDataObject.get("TotalRows"));
	                   System.out.println("Total rows: " + myDataObject.get("dOriginalName"));
	                   myContentTitle= myDataObject.get("dDocTitle");
	                   myUsernameInSession= myDataObject.get("dDocAuthor");
	                   dOriginalName = myDataObject.get("dOriginalName");
	                   dOriginalName=dOriginalName.split("[ .]")[0];
	               }
	                  
	               /** Check in Starts Here **/
	                  
	               InputStream myInputStream = null;
	               BufferedReader myBufferedReader = null;   
	               myInputStream = new ByteArrayInputStream(decodedBytes);
	               myBufferedReader = new BufferedReader(new InputStreamReader(myInputStream));
	               if (myInputStream != null) {
	                  System.out.println("In uploadFile - Title: " + myContentTitle);
	                  //DataBinder myRequestDataBinder = myIdcClient.createBinder();
	                  myRequestDataBinder.putLocal("IdcService", "CHECKIN_UNIVERSAL");
	                  myRequestDataBinder.putLocal("dDocType", "Application");
	                  // File title may be accepted in form of string from UI (e.g. Input Text) and passed in function call
	                  myRequestDataBinder.putLocal("dDocTitle", myContentTitle);
	                  myRequestDataBinder.putLocal("dDocAuthor", myUsernameInSession);
	                  myRequestDataBinder.putLocal("dSecurityGroup", "Public");
	                  myRequestDataBinder.putLocal("dDocAccount", "");
	                  myRequestDataBinder.putLocal("dFormat", "text/html");
	                  myRequestDataBinder.addFile("primaryFile", new TransferFile(myInputStream, dOriginalName+".png", decodedBytes.length, "image/png"));
	                  myServiceResponse = myIdcClient.sendRequest(myIdcContext, myRequestDataBinder);
	                 
	                  myInputStream = myServiceResponse.getResponseStream();
	                  
	                  String myResponseString =  myServiceResponse.getResponseAsString();
	                  System.out.println("Uploaded file details: \n" + myResponseString);
	              
	                  myResponseDataBinder = myServiceResponse.getResponseAsBinder();
	                  DataObject myDataObject = myResponseDataBinder.getLocalData();
	                  request.setAttribute("dID", myDataObject.get("dID"));
	                  request.setAttribute("dDocName", myDataObject.get("dDocName"));
	                  System.out.println("File uploaded successfully");
	              }
	            
	            System.out.println("File checked out successfully");
	          } catch (IdcClientException idcce) {
	            System.out.println("IDC Client Exception occurred. Unable to checkout file. Message: " + idcce.getMessage() + ", Stack trace: ");
	            idcce.printStackTrace();
	          } catch (Exception e) {
	            System.out.println("Exception occurred. Unable to check out file. Message: " + e.getMessage() + ", Stack trace: ");
	            e.printStackTrace();
	          } finally {
	            if (myServiceResponse != null) {
	              myServiceResponse.close();
	            }
	          }
	          
	          
	      } catch (Exception e) {
	          e.printStackTrace();
	          String loggerMessage = "Upload image failed : ";
	         
	      }
	  }
	
	

}
