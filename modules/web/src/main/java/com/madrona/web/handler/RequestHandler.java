package com.madrona.web.handler;

import com.madrona.server.model.House;
import com.madrona.server.model.AbstractResponse;

import java.util.List;


public interface RequestHandler {

    AbstractResponse createHouse(House house);

    AbstractResponse deleteHouse(String houseId);

    List<House> listAllHouse();
}
