package com.madrona.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

    @RequestMapping(value = "add-event")
    public String calenderPage() {
        return "event/calender";
    }

}
