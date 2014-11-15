package com.madrona.server;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.model.Student;
import com.madrona.server.service.SportService;
import com.madrona.server.service.StudentService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
import java.util.List;

@Path("/")
public class RestStudentService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestStudentService.class);

    private StudentService studentService;
    private EmailSender emailSender;

    @POST
    @Path("/add-student")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse addStudent(Student student) {
        boolean addStudentStatus = studentService.addStudent(student);
        if (addStudentStatus) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    @GET
    @Path("/list-students")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public List<Student> getAllStudents() {
        return studentService.getAllStudents();
    }

    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
