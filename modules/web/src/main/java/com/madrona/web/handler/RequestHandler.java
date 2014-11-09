package com.madrona.web.handler;

import com.madrona.server.model.House;
import com.madrona.server.model.CommonResponse;


public interface RequestHandler {

    CommonResponse createHouse(House house);

}
