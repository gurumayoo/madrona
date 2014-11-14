package com.madrona.server;


import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.service.SportService;
import com.madrona.server.utils.EmailSender;
import com.madrona.server.utils.Status;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;
import java.util.List;
import java.util.Map;

@Path("/madrona/")
public class RestSportService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestSportService.class);

    private SportService sportService;
    private EmailSender emailSender;

    @POST
    @Path("/add-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse addHouse(House house) {
        boolean addHouseStatus = sportService.addHouse(house);
        if (addHouseStatus) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    @GET
    @Path("/list-houses")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public List<House> addHouse() {
        return sportService.getAllHouses();
    }

    @POST
    @Path("/delete-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse deleteHouse(Map<String, Object> request) {
        int id = Integer.parseInt(request.get("id").toString());
        int noOfRowEffected = sportService.deleteHouseById(id);
        if (noOfRowEffected > 0) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    @POST
    @Path("/update-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public AbstractResponse updateHouse(House house) {
        boolean updateHouseStatus = sportService.updateHouse(house);
        if (updateHouseStatus) return Status.SUCCESS;
        else return Status.INTERNAL_SERVER_ERROR;
    }

    @GET
    @Path("/get-house")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public House getHouse(@QueryParam("id") String houseId) {
        System.out.println(houseId);
        int id = Integer.parseInt(houseId);
        return sportService.getHouseById(id);
    }


    public void setSportService(SportService sportService) {
        this.sportService = sportService;
    }

    public void setEmailSender(EmailSender emailSender) {
        this.emailSender = emailSender;
    }
}
