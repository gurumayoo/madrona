package com.madrona.server;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.service.SportService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;

@Path("/madrona/")
public class RestStudentService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestStudentService.class);

    private SportService sportService;
    private EmailSender emailSender;

    @POST
    @Path("/add-student")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse addHouse(House house) {
        boolean addHouseStatus = sportService.addHouse(house);
        if (addHouseStatus) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    public void setSportService(SportService sportService) {
        this.sportService = sportService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
