package com.madrona.web.controller;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.utils.StatusCode;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.handler.impl.RequestHandlerImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class SportController {

    private static final Logger LOGGER = LoggerFactory.getLogger(SportController.class);

    @Autowired
    RequestHandler requestHandler;
    
    @RequestMapping(value = "add-house-action", method = RequestMethod.POST)
    public String addHouseAction(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        House house = new House();
        house.setHouseName(request.getParameter("house_name"));
        house.setHouseColor(request.getParameter("house_color"));
        AbstractResponse response = requestHandler.createHouse(house);

        if (StatusCode.SUCCESS.getShortCode().equals(response.getStatusCode())) {
            redirectAttributes.addAttribute("status", StatusCode.SUCCESS.getDescription());
            return "redirect:/list-house";
        } else {
            redirectAttributes.addAttribute("status", StatusCode.INTERNAL_ERROR.getDescription());
            return "redirect:/list-house";
        }
    }

    @RequestMapping(value = "/list-house")
    public String listAllHousesPage(Map<String, Object> map) {
        List<House> houseList = requestHandler.listAllHouse();
        map.put("houses", houseList);
        return "sport/list-house";
    }

    @RequestMapping(value = "/delete-house")
    public String listAllHousesPage(HttpServletRequest request, Map<String, Object> map) {
        String houseId = request.getParameter("house-id");
        AbstractResponse response = requestHandler.deleteHouse(houseId);
        LOGGER.debug("response " + response);
        return "redirect:/list-house";
    }
}
