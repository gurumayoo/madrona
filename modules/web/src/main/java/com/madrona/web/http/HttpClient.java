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
import com.madrona.server.model.Resp;
import org.apache.cxf.jaxrs.client.WebClient;
import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.core.MediaType;
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
    private int maxRetryCount = 3;

    public HttpClient(String url) {
        this.url = url;
    }

    public void init() {
        List<Object> providers = new ArrayList<Object>();
        providers.add(new JacksonJsonProvider());
        webClient = WebClient.create(url, providers);
        webClient.header("Content-Type", "application/json");
        webClient.accept("application/json");
    }


    public Resp send(RequestMessage request) {
        try {
            logger.info("WebClient it being initialized with uri [{}] for app Id [{}]", url, request);
            Response response = webClient.post(request.convertToMap());
            logger.debug("Response received from Server "+ response);
            return readJsonResponse(response);
        } catch (Exception e) {
            logger.error("Error while sending the notification to WebRTC Gateway", e);
            return null;
        }
    }

    private static Resp readJsonResponse(Response response) {
        InputStream is = (InputStream) response.getEntity();
        Class aClass = Map.class;
        JacksonJsonProvider jsonProvider = new JacksonJsonProvider();
        Map<String, Object> map;
        try {
            map = (Map<String, Object>) jsonProvider.readFrom(aClass, null, null, MediaType.APPLICATION_JSON_TYPE, null, is);
        } catch (IOException e) {
            logger.error("can't create the json object", e);
            return null;
        }
        return Resp.convertFromMap(map);
    }


}
