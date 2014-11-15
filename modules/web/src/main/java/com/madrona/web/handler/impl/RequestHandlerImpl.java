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

    private Map<String, String> urlMap;
    private Map<String, HttpClient> clientMap;

    public void init() {
        clientMap = new HashMap<>();
        for(Map.Entry<String, String> urls: urlMap.entrySet()){
            HttpClient client = new HttpClient(urls.getValue());
            client.init();
            clientMap.put(urls.getKey(), client);
        }
    }

    @Override
    public AbstractResponse createHouse(House house) {
        return clientMap.get("AddHouse").send(house);
    }

    @Override
    public AbstractResponse deleteHouse(final String houseId) {
        Map<String, Object> map = new HashMap<>();
        map.put("id", houseId);
        return clientMap.get("DeleteHouse").send2(map);
    }

    @Override
    public List<House> listAllHouse() {
        System.out.println("======>" + clientMap.get("GetAllHouses"));
        return clientMap.get("GetAllHouses").getHouse();
    }

    public void setUrlMap(Map<String, String> urlMap) {
        this.urlMap = urlMap;
    }
}
