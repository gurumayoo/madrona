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

import com.madrona.server.model.RequestMessage;
import com.madrona.server.model.CommonResponse;
import org.apache.cxf.jaxrs.client.WebClient;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
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


    public CommonResponse send(RequestMessage request) {
        try {
            logger.info("WebClient it being initialized with uri [{}] and request parameters for [{}]", url, request);
            Response response = webClient.post(request.convertToMap());
            logger.info("Response received from madrona server, response status [{}]", response.getStatus());
            return readJsonResponse(response);
        } catch (Exception e) {
            logger.error("Error while sending the notification to server", e);
            return null;
        }
    }

    private CommonResponse readJsonResponse(Response response) {
        InputStream inputStream = (InputStream) response.getEntity();
        ObjectMapper mapper = new ObjectMapper();
        try {
            return mapper.readValue(inputStream, CommonResponse.class);
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