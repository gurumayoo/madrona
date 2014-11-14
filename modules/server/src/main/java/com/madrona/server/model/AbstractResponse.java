package com.madrona.server.model;

import java.util.Map;

public class AbstractResponse {

    private String statusCode;
    private String statusDescription;

    public AbstractResponse() {
    }

    public AbstractResponse(String statusCode, String statusDescription) {
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
        sb.append("AbstractResponse");
        sb.append("{statusCode='").append(statusCode).append('\'');
        sb.append(", statusDescription='").append(statusDescription).append('\'');
        sb.append('}');
        return sb.toString();
    }

    public static AbstractResponse convertFromMap(Map<String, Object> map) {
        return new AbstractResponse((String)map.get("StatusCode"), (String)map.get("StatusDescription"));
    }
}
