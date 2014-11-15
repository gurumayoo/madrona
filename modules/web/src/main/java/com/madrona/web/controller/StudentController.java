package com.madrona.web.controller;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.model.Student;
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
public class StudentController {

    @Autowired
    RequestHandler requestHandler;

    @RequestMapping(value = "add-student")
    public String addStudentPage() {
        return "student/add-student";
    }

    @RequestMapping(value = "add-student-action", method = RequestMethod.POST)
    public String addStudentAction(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        Student student = new Student();
        student.setFirstName(request.getParameter("first_name"));
        student.setLastName(request.getParameter("last_name"));
        AbstractResponse response = requestHandler.createStudent(student);
        if (StatusCode.SUCCESS.getShortCode().equals(response.getStatusCode())) {
            redirectAttributes.addAttribute("status", StatusCode.SUCCESS.getDescription());
            return "redirect:/list-student";
        } else {
            redirectAttributes.addAttribute("status", StatusCode.INTERNAL_ERROR.getDescription());
            return "redirect:/list-student";
        }
    }

    @RequestMapping(value = "list-student")
    public String listAllStudentsPage(Map<String, Object> map) {
        List<Student> houseList = requestHandler.listAllStudents();
        map.put("students", houseList);
        return "student/list-student";
    }
}
