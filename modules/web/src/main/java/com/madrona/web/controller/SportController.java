package com.madrona.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SportController {

    @RequestMapping(value = "add-house")
    public String addHousePage() {
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
