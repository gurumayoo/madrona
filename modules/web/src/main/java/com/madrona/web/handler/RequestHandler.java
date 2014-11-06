package com.madrona.web.handler;

import com.madrona.server.model.House;
import com.madrona.server.model.Resp;


public interface RequestHandler {

    Resp createHouse(House house);

}
