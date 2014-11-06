package com.madrona.server.model;

import java.util.Map;

/**
 * Created by mayooran for madrona on 10/31/14 9:09 PM.
 */
public class Resp {

    private String statusCode;
    private String statusDescription;

    public Resp(String statusCode, String statusDescription) {
        this.statusCode = statusCode;
        this.statusDescription = statusDescription;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }

    public String getStatusDescription() {
        return statusDescription;
    }

    public void setStatusDescription(String statusDescription) {
        this.statusDescription = statusDescription;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer();
        sb.append("Resp");
        sb.append("{statusCode='").append(statusCode).append('\'');
        sb.append(", statusDescription='").append(statusDescription).append('\'');
        sb.append('}');
        return sb.toString();
    }

    public static Resp convertFromMap(Map<String, Object> map) {
        return new Resp((String)map.get("StatusCode"), (String)map.get("StatusDescription"));
    }
}
