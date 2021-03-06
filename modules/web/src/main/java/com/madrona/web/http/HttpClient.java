/*
 * (C) Copyright 2010-2014 hSenid Mobile Solutions (Pvt) Limited.
 * All Rights Reserved.
 *
 * These materials are unpublished, proprietary, confidential source code of
 * hSenid Mobile Solutions (Pvt) Limited and constitute a TRADE SECRET
 * of hSenid Mobile Solutions (Pvt) Limited.
 *
 * hSenid Mobile Solutions (Pvt) Limited retains all title to and intellectual
 * property rights in these materials.
 */

package com.madrona.web.http;

import com.madrona.server.model.House;
import com.madrona.server.model.RequestMessage;
import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Student;
import org.apache.cxf.jaxrs.client.WebClient;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.core.Response;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class HttpClient {
    private static final Logger logger = LoggerFactory.getLogger(HttpClient.class);

    private WebClient webClient;
    private String url;

    public HttpClient(String url) {
        this.url = url;
    }

    public void init() {
        List<Object> providers = new ArrayList<>();
        providers.add(new JacksonJsonProvider());
        webClient = WebClient.create(url, providers);
        webClient.header("Content-Type", "application/json");
        webClient.accept("application/json");
    }


    public AbstractResponse send(Map<String, Object> request) {
        try {
            logger.info("WebClient it being initialized with uri [{}] and request parameters for [{}]", url, request);
            Response response = webClient.post(request);
            logger.info("Response received from madrona server, response status [{}]", response.getStatus());
            return readJsonResponse(response);
        } catch (Exception e) {
            logger.error("Error while sending the notification to server", e);
            return null;
        }
    }

    private AbstractResponse readJsonResponse(Response response) {
        InputStream inputStream = (InputStream) response.getEntity();
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.readValue(inputStream, AbstractResponse.class);
        } catch (JsonGenerationException e) {
            logger.error("Error occurred while generating json response [{}]", e);
            return null;
        } catch (JsonMappingException e) {
            logger.error("Error occurred while mapping the json response [{}]", e);
            return null;
        } catch (IOException e) {
            logger.error("Unknown error occurred [{}]", e);
            return null;
        }

    }

    public  List getAllItems(Class clazz) {
        try {
            logger.info("WebClient it being initialized with uri [{}]", url);
            Response response = webClient.get();
            logger.info("Response received from madrona server, response status [{}]", response.getStatus());
            return readJsonResponses(response, clazz);
        } catch (Exception e) {
            logger.error("Error while sending the notification to server", e);
            return null;
        }
    }

    private List readJsonResponses(Response response, Class clazz) {
        InputStream inputStream = (InputStream) response.getEntity();
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.readValue(inputStream, TypeFactory.defaultInstance().constructCollectionType(List.class, clazz));
        } catch (JsonGenerationException e) {
            logger.error("Error occurred while generating json response [{}]", e);
            return null;
        } catch (JsonMappingException e) {
            logger.error("Error occurred while mapping the json response [{}]", e);
            return null;
        } catch (IOException e) {
            logger.error("Unknown error occurred [{}]", e);
            return null;
        }
    }


    public Student getItem(String id) {
        try {
            logger.info("WebClient it being initialized with uri [{}]", url);
            Response response = webClient.get();
            logger.info("Response received from madrona server, response status [{}]", response.getStatus());
            return readJson(response);
        } catch (Exception e) {
            logger.error("Error while sending the notification to server", e);
            return null;
        }
    }

    private Student readJson(Response response) {
        InputStream inputStream = (InputStream) response.getEntity();
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.readValue(inputStream, Student.class);
        } catch (JsonGenerationException e) {
            logger.error("Error occurred while generating json response [{}]", e);
            return null;
        } catch (JsonMappingException e) {
            logger.error("Error occurred while mapping the json response [{}]", e);
            return null;
        } catch (IOException e) {
            logger.error("Unknown error occurred [{}]", e);
            return null;
        }
    }
}
