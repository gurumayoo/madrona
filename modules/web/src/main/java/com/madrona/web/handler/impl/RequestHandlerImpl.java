package com.madrona.web.handler.impl;

import com.madrona.server.model.House;
import com.madrona.server.model.Resp;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.http.HttpClient;

public class RequestHandlerImpl implements RequestHandler {

    HttpClient httpClient;

    @Override
    public Resp createHouse(House house) {
        httpClient = new HttpClient("http://localhost:20001/madrona/add-house");

        System.out.println("Sending..............................");
        httpClient.init();
        return httpClient.send(house);
    }
}
