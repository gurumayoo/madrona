package com.madrona.web.handler.impl;

import com.madrona.server.model.Student;
import com.madrona.web.handler.GetRequestHandler;
import com.madrona.web.http.HttpClient;

import java.text.MessageFormat;
import java.util.Map;

public class GetRequestHandlerImpl implements GetRequestHandler {

    private Map<String, String> urlMap;

    @Override
    public Student viewStudentById(String id) {
        String url = urlMap.get("GetStudent");
        String newUrl = MessageFormat.format(url, id);
        HttpClient client = getHttpClient(newUrl);
        return client.getItem(id);
    }

    private HttpClient getHttpClient(String newUrl) {
        HttpClient client = new HttpClient(newUrl);
        client.init();
        return client;
    }


    public void setUrlMap(Map<String, String> urlMap) {
        this.urlMap = urlMap;
    }

}
