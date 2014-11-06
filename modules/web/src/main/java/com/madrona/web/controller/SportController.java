package com.madrona.web.controller;


import com.madrona.server.model.House;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.handler.impl.RequestHandlerImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SportController {

    RequestHandler requestHandler;

    @RequestMapping(value = "add-house")
    public String addHousePage() {
        return "sport/add-house";
    }

    @RequestMapping(value = "add-house-action", method = RequestMethod.POST)
    public String addHouseAction() {
        requestHandler = new RequestHandlerImpl();
        House house = new House("house", "colot");
        requestHandler.createHouse(house);
        return "sport/add-house";
    }

    @RequestMapping(value = "list-house")
    public String listAllHousesPage() {
        return "sport/list-house";
    }

    @RequestMapping(value = "test")
    public String listTestPage() {
        return "sport/test";
    }
}
