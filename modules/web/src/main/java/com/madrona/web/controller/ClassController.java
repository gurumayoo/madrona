package com.madrona.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClassController {

    @RequestMapping(value = "add-class")
    public String addClassesPage() {
        return "classes/add-classes";
    }

}
