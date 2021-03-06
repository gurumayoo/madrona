package com.madrona.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {

    @RequestMapping(value = {"/login"})
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = "/index")
    public String dashBoardPage() {
        return "dash-board";
    }

    @RequestMapping(value = "/sign-up")
    public String signUpPage() {
        return "sign-up";
    }

    @RequestMapping(value = "/add-user")
    public String addNewUserPage() {
        return "user/add-user";
    }

    @RequestMapping(value = "/list-user")
    public String listUserPage() {
        return "user/list-user";
    }

}
