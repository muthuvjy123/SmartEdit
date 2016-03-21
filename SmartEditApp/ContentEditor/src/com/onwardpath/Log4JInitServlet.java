package com.onwardpath;

import java.io.File;

import java.io.FileReader;

import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.PropertyConfigurator;

public class Log4JInitServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("Log4JInitServlet is initializing log4j");
		String log4jLocation = config.getInitParameter("log4j-properties-location");
        try{
		File configFile = new File(System.getProperty("java.io.tmpdir")+"resources.properties");
		FileReader reader = new FileReader(configFile);
		Properties props = new Properties();
		props.load(reader);
		log4jLocation =props.getProperty("PROP_FILE_PATH")+"log4j.properties";
		//ServletContext sc = config.getServletContext();
		//System.setProperty("logfile.name",props.getProperty("PROP_FILE_PATH")+"SmartEditLog.log");
            System.out.println("logfile.name: " + System.getProperty("logfile.name"));
		if (log4jLocation == null) {
			System.err.println("*** No log4j-properties-location init param, so initializing log4j with BasicConfigurator");
			BasicConfigurator.configure();
		} else {
			//String webAppPath = sc.getRealPath("/");
		    String webAppPath = this.getClass().getResource("/").getPath();
		    webAppPath=webAppPath.replaceFirst("/", "");
		    //System.out.println("webAppPath: " + webAppPath);
		    
			//String log4jProp = webAppPath + log4jLocation;
			String log4jProp = log4jLocation;
		    System.out.println("log4jLocation: " + log4jProp);
			File logfile = new File(log4jProp);
			if (logfile.exists()) {
				System.out.println("Initializing log4j with: " + log4jProp);
				PropertyConfigurator.configure(log4jProp);
			} else {
				System.err.println("*** " + log4jProp + " file not found, so initializing log4j with BasicConfigurator");
				BasicConfigurator.configure();
			}
		}
            super.init(config);
        }catch(Exception e){
            e.printStackTrace();
        }
		
	}

}
