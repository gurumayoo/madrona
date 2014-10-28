package com.madrona.server.utils;


import java.io.IOException;

public enum StatusCode {

    SUCCESS("S1000"),
    INVALID_CREDENTIALS("E1001"),
    USER_NOT_FOUND("E1001"),
    USER_NOT_ACTIVE("E1001"),
    USER_NOT_ALLOWED("E1001"),
    USER_EXISTS("E1001"),
    INTERNAL_ERROR("E5000"),
    UNSUPPORTED_REQUEST_TYPE("E1001");

    private String shortCode;
    private String description;
    ErrorUtils errorUtils;

    StatusCode(String shortCode) {
        errorUtils = new ErrorUtils();
        this.shortCode = shortCode;
        try {
            this.description = errorUtils.getStatusDescription(shortCode);
        } catch (IOException e) {
            this.description = "No Description Found";
            e.printStackTrace();
        }
    }

    public String getShortCode() {
        return shortCode;
    }

    public String getDescription() {
        return description;
    }


}
