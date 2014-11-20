package com.madrona.web.controller;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Grade;
import com.madrona.server.model.House;
import com.madrona.server.utils.StatusCode;
import com.madrona.web.handler.RequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class GradeController {

    @Autowired
    RequestHandler requestHandler;

    @RequestMapping(value = "add-grade")
    public String addClassesPage() {
        return "grade/list-grade";
    }

    @RequestMapping(value = "add-grade-action", method = RequestMethod.POST)
    public String addHouseAction(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        Grade grade = new Grade();
        grade.setGradeName(request.getParameter("grade_name"));
        grade.setGradeTeacher(request.getParameter("grade_teacher"));
        AbstractResponse response = requestHandler.createGrade(grade);
        if (StatusCode.SUCCESS.getShortCode().equals(response.getStatusCode())) {
            redirectAttributes.addAttribute("status", StatusCode.SUCCESS.getDescription());
            return "redirect:/list-grade";
        } else {
            redirectAttributes.addAttribute("status", StatusCode.INTERNAL_ERROR.getDescription());
            return "redirect:/list-grade";
        }
    }

    @RequestMapping(value = "/list-grade")
    public String listAllGradesPage(Map<String, Object> map) {
        List<Grade> houseList = requestHandler.listAllGrades();
        map.put("grades", houseList);
        return "grade/list-grade";
    }

    @RequestMapping(value = "/delete-grade")
    public String listAllGradesPage(HttpServletRequest request, Map<String, Object> map) {
        String houseId = request.getParameter("house-id");
        AbstractResponse response = requestHandler.deleteHouse(houseId);
        return "redirect:/list-grade";
    }

}
