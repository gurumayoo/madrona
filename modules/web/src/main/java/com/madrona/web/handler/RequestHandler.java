package com.madrona.web.handler;

import com.madrona.server.model.House;
import com.madrona.server.model.Resp;

/**
 * Created by mayooran for madrona on 10/31/14 9:44 PM.
 */
public interface RequestHandler {

    Resp createHouse(House house);

}
