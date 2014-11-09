package com.madrona.web.handler.impl;

import com.madrona.server.model.House;
import org.junit.Test;


public class RequestHandlerImplImpl extends RequestHandlerImpl {

    @Test
    public void testCreateHouse() {
        House house = new House("dfdfd", "dfdsfcvdf");
        createHouse(house);
    }
}
