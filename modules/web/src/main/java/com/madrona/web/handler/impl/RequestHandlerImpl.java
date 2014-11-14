package com.madrona.web.handler.impl;

import com.madrona.server.model.House;
import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.RequestMessage;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.http.HttpClient;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RequestHandlerImpl implements RequestHandler {

    HttpClient httpClient;

    @Override
    public AbstractResponse createHouse(House house) {
        httpClient = new HttpClient("http://localhost:20001/madrona/add-house");
        httpClient.init();
        return httpClient.send(house);
    }

    @Override
    public AbstractResponse deleteHouse(final String houseId) {
        httpClient = new HttpClient("http://localhost:20001/madrona/delete-house");
        httpClient.init();
        Map<String, Object> map = new HashMap<>();
        map.put("id", houseId);
        return httpClient.send2(map);
    }

    @Override
    public List<House> listAllHouse() {
        httpClient = new HttpClient("http://localhost:20001/madrona/list-houses");
        httpClient.init();
        return httpClient.getHouse();
    }
}
