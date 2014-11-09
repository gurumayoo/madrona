package com.madrona.web.controller;


import com.madrona.server.model.House;
import com.madrona.server.model.CommonResponse;
import com.madrona.server.utils.StatusCode;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.handler.impl.RequestHandlerImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class SportController {

    private static final Logger LOGGER = LoggerFactory.getLogger(SportController.class);
    RequestHandler requestHandler;


    @RequestMapping(value = "add-house-action", method = RequestMethod.POST)
    public String addHouseAction(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        requestHandler = new RequestHandlerImpl();

        House house = new House(request.getParameter("house_name"), request.getParameter("house_color"));
        LOGGER.debug("Adding new house details [{}]", house);
        CommonResponse response = requestHandler.createHouse(house);
        if(StatusCode.SUCCESS.getShortCode().equals(response.getStatusCode())){
            redirectAttributes.addFlashAttribute("status", StatusCode.SUCCESS.getDescription());
            return "redirect:/list-house";
        } else{
            redirectAttributes.addFlashAttribute("status", StatusCode.INTERNAL_ERROR.getDescription());
            return "redirect:/list-house";
        }
    }

    @RequestMapping(value = "/list-house")
    public String listAllHousesPage() {
        return "sport/list-house";
    }

    @RequestMapping(value = "test")
    public String listTestPage() {
        return "sport/test";
    }
}
