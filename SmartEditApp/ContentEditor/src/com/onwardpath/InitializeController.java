package com.onwardpath;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import java.io.OutputStream;

import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class InitializeController extends HttpServlet {
    final static Logger log = Logger.getLogger(InitializeController.class);
    private static final long serialVersionUID = 1L;
    private String CommonSmartEditPath=System.getProperty("java.io.tmpdir");
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            String type= "";
            if(request.getParameter("type")!=null){
                 type= request.getParameter("type");
            }
            if(type.equalsIgnoreCase("ClientDetails")){
                System.out.println("Inside ClientDetails");
                InitializeController ce= new InitializeController();
                ce.UpdateClientDetails(request,response); 
                RequestDispatcher rd=request.getRequestDispatcher("/ClientDetails.jsp");
                rd.forward(request, response); 
            }
            
        }
    
    public void UpdateClientDetails(HttpServletRequest request, HttpServletResponse response){
        System.out.println("Inside UpdateClientDetails");
        try{
            String http_URL=request.getParameter("http_URL");
            String RIDC_URL=request.getParameter("RIDC_URL");
            String PROP_FILE_PATH=request.getParameter("PROP_FILE_PATH");
            log.info("http_URL::"+http_URL+" RIDC_URL::"+RIDC_URL);
            File newFile = new File(CommonSmartEditPath+"resources.properties");
            OutputStream out = new FileOutputStream( newFile );
            Properties props = new Properties();
            props.setProperty("RIDC_URL", RIDC_URL);
            props.setProperty("http_URL", http_URL);
            props.setProperty("PROP_FILE_PATH", PROP_FILE_PATH);
            props.store(out, "Welcome To Smart Edit");
            File SmartEditLogs = new File(PROP_FILE_PATH+"SmartEditLog.log");
            if(!SmartEditLogs.exists()) {
                SmartEditLogs.createNewFile();
            }
            // Adding Log property file
            File logFile = new File(PROP_FILE_PATH+"log4j.properties");
            if(!logFile.exists()) {
                logFile.createNewFile();
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
