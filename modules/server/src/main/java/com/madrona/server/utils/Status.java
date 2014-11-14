package com.madrona.server.utils;

import com.madrona.server.model.AbstractResponse;


public class Status {

    public static final AbstractResponse SUCCESS = new AbstractResponse("S1000", "Successful");
    public static final AbstractResponse INTERNAL_SERVER_ERROR = new AbstractResponse("E5000", "Internal Server Error");
}
