package com.madrona.server.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.ws.rs.*;

@Path("/madrona/")
public class RestCoreService {

    private static final Logger LOGGER = LoggerFactory.getLogger(RestCoreService.class);

    @GET
    @Path("/test")
    @Consumes({"application/json"})
    @Produces({"application/json"})
    public String setSuccess()
    {
        LOGGER.debug("Setting success response to [{}]");
        return "Success";
    }

}
