package com.madrona.server.model;

import java.util.Map;

public class CommonResponse {

    private String statusCode;
    private String statusDescription;

    public CommonResponse() {
    }

    public CommonResponse(String statusCode, String statusDescription) {
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
        sb.append("CommonResponse");
        sb.append("{statusCode='").append(statusCode).append('\'');
        sb.append(", statusDescription='").append(statusDescription).append('\'');
        sb.append('}');
        return sb.toString();
    }

    public static CommonResponse convertFromMap(Map<String, Object> map) {
        return new CommonResponse((String)map.get("StatusCode"), (String)map.get("StatusDescription"));
    }
}
