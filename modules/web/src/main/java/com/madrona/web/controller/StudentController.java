package com.madrona.web.controller;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Parent;
import com.madrona.server.model.Student;
import com.madrona.server.utils.StatusCode;
import com.madrona.web.handler.GetRequestHandler;
import com.madrona.web.handler.RequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {

    @Autowired
    RequestHandler requestHandler;

    @Autowired
    GetRequestHandler getRequestHandler;


    @RequestMapping(value = "add-student")
    public String addStudentPage() {
        return "student/add-student";
    }

    @RequestMapping(value = "add-student-action", method = RequestMethod.POST)
    public String addStudentAction(HttpServletRequest request, RedirectAttributes redirectAttributes) {
        Student student = new Student();
        student.setFirstName(request.getParameter("first_name"));
        student.setLastName(request.getParameter("last_name"));
        student.setEmailAddress(request.getParameter("email"));
        student.setGender(request.getParameter("gender"));
        student.setDateOfBirth(request.getParameter("birth_date"));
        student.setGrade(request.getParameter("grade"));
        student.setMobileNumber(request.getParameter("phone_no"));
        student.setHomeAddress(request.getParameter("address"));
        student.setJoinDate(new Date());

        Parent parent = new Parent();
        parent.setFatherName(request.getParameter("father_name"));
        parent.setFatherJob(request.getParameter("father_job"));
        parent.setMotherName(request.getParameter("mother_name"));
        parent.setMotherJob(request.getParameter("mother_job"));

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

    @RequestMapping(value = "view-student")
    public String viewStudentPage(HttpServletRequest request, Map<String, Object> map) {
        Student student = getRequestHandler.viewStudentById(request.getParameter("id"));
        map.put("student", student);
        return "student/view-student";
    }
}
