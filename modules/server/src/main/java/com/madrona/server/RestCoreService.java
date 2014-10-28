package com.madrona.server;


import com.madrona.server.model.House;
import com.madrona.server.model.Student;
import com.madrona.server.service.CommonService;
import com.madrona.server.utils.EmailSender;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.ws.rs.*;

@Path("/madrona/")
public class RestCoreService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestCoreService.class);

    private CommonService commonService;
    private EmailSender emailSender;

    @GET
    @Path("/test")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public House setSuccess() {
        LOGGER.debug("Setting success response to [{}]");

        House house = new House();
        house.setHouseName("Valluvan");
        house.setHouseColor("Red");
        commonService.addItem(house);

//        emailSender.doSendEmail("smyoorans@gmail.com");

        return house;
    }

    public void setCommonService(CommonService commonService) {
        this.commonService = commonService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
