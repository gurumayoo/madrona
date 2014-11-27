package com.madrona.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FileUploadHandler {
    private static final String UPLOAD_DIRECTORY = "/home/mayooran/Desktop/wap-theme";


    @RequestMapping(value = {"/upload"})
    public String loginPage() {
        return "upload-image";
    }

    @RequestMapping(value = "upload-action", method = RequestMethod.POST)
    public String upload(HttpServletRequest request, Map<String, Object> map) throws IOException {
      
        //process only if its multipart content

        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiParts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
              
                for(FileItem item : multiParts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        System.out.println("item name" + item.getName());

                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }
           
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
    
        return "results";
     
    }
  
}