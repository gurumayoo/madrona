package com.madrona.server;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Grade;
import com.madrona.server.service.GradeService;
import com.madrona.server.service.GradeService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
import java.util.List;

@Path("/")
public class RestGradeService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestGradeService.class);

    private GradeService gradeService;
    private EmailSender emailSender;

    @POST
    @Path("/add-grade")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse addGrade(Grade grade) {
        boolean addGradeStatus = gradeService.addGrade(grade);
        if (addGradeStatus) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    @GET
    @Path("/list-grades")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public List<Grade> getAllGrades() {
        return gradeService.getAllGrades();
    }

    @GET
    @Path("/get-grade")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public Grade getGrades(@QueryParam("id") String gradeId) {
        System.out.println(gradeId);
        int id = Integer.parseInt(gradeId);
        return gradeService.getGradeById(id);
    }

    public void setGradeService(GradeService studentService) {
        this.gradeService = studentService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
