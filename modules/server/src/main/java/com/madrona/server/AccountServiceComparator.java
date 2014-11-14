package com.madrona.server;

import java.lang.reflect.Method;

import javax.ws.rs.Path;

import org.apache.cxf.jaxrs.ext.ResourceComparator;
import org.apache.cxf.jaxrs.impl.UriInfoImpl;
import org.apache.cxf.jaxrs.model.ClassResourceInfo;
import org.apache.cxf.jaxrs.model.OperationResourceInfo;
import org.apache.cxf.message.Message;

public class AccountServiceComparator implements ResourceComparator{

    public int compare(ClassResourceInfo arg0, ClassResourceInfo arg1,
            Message message) {

        UriInfoImpl uriInfo = new UriInfoImpl(message);

        String path = uriInfo.getPath();
        String[] pathArray = path.split("/");
        String resourceUrlName = pathArray[1];

        System.out.println("Path : "+resourceUrlName);

        Method[] methods = arg0.getServiceClass().getMethods();
        int value = 1;
        String resource = null;
        for(Method method : methods) {

            Path annotationPath = method.getAnnotation(javax.ws.rs.Path.class);
            if(null != annotationPath){
                String pathValue = annotationPath.value();
                String[] parts = pathValue.split("/");
                resource = parts[1];
                System.out.println("resource : "+resource);
            }

            if(resourceUrlName.contains(resource)){
                value = -1; 
            }

        }
        return value;
    }

    public int compare(OperationResourceInfo arg0, OperationResourceInfo arg1,
            Message arg2) {
        return 0;
    }

}
