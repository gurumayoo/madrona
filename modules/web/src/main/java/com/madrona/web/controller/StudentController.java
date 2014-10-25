package com.madrona.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

    @RequestMapping(value = "add-student")
    public String addStudentPage() {
        return "student/add-student";
    }
}
