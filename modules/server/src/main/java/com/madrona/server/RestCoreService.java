package com.madrona.server;


import com.madrona.server.model.House;
import com.madrona.server.model.CommonResponse;
import com.madrona.server.model.Student;
import com.madrona.server.model.Subject;
import com.madrona.server.service.CommonService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import javax.ws.rs.*;
import java.util.List;

@Path("/madrona/")
public class RestCoreService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestCoreService.class);

    private CommonService commonService;
    private EmailSender emailSender;

    @POST
    @Path("/add-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public CommonResponse addHouse(House house) {
        LOGGER.debug("Adding house [{}]", house);
        commonService.addItem(house);
        return Status.SUCCESS;
    }

    @GET
    @Path("/list-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public List<House> listHouses() {
        LOGGER.debug("Viewing all houses");
        return (List<House>)(List<?>) commonService.listItems("House");
    }

    @POST
    @Path("/add-student")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public CommonResponse addStudent(Student student) {
        LOGGER.debug("Adding student [{}]", student);
        commonService.addItem(student);
        return Status.SUCCESS;
    }

    @POST
    @Path("/add-subject")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public CommonResponse addSubject(Subject subject) {
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
