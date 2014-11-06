package com.madrona.server;


import com.madrona.server.model.House;
import com.madrona.server.model.Resp;
import com.madrona.server.model.Student;
import com.madrona.server.model.Subject;
import com.madrona.server.service.CommonService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import javax.ws.rs.*;

@Path("/madrona/")
public class RestCoreService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestCoreService.class);

    private CommonService commonService;
    private EmailSender emailSender;

    @POST
    @Path("/add-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public Resp addHouse(House house) {
        LOGGER.debug("Adding house [{}]", house);
        commonService.addItem(house);
        return Status.SUCCESS;
    }

    @POST
    @Path("/add-student")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public Resp addStudent(Student student) {
        LOGGER.debug("Adding student [{}]", student);
        commonService.addItem(student);
        return Status.SUCCESS;
    }

    @POST
    @Path("/add-subject")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public Resp addSubject(Subject subject) {
        LOGGER.debug("Adding subject [{}]", subject);
        commonService.addItem(subject);
        return Status.SUCCESS;
    }




    public void setCommonService(CommonService commonService) {
        this.commonService = commonService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
