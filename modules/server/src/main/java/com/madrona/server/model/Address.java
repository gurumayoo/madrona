package com.madrona.server.model;

import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class Address {

    protected String permanentAddressLine1;
    protected String permanentAddressLine2;
    protected String permanentCity;
    protected String tempAddressLine1;
    protected String tempAddressLine2;
    protected String tempCity;

    public String getPermanentAddressLine1() {
        return permanentAddressLine1;
    }

    public void setPermanentAddressLine1(String permanentAddressLine1) {
        this.permanentAddressLine1 = permanentAddressLine1;
    }

    public String getPermanentAddressLine2() {
        return permanentAddressLine2;
    }

    public void setPermanentAddressLine2(String permanentAddressLine2) {
        this.permanentAddressLine2 = permanentAddressLine2;
    }

    public String getPermanentCity() {
        return permanentCity;
    }

    public void setPermanentCity(String permanentCity) {
        this.permanentCity = permanentCity;
    }

    public String getTempAddressLine1() {
        return tempAddressLine1;
    }

    public void setTempAddressLine1(String tempAddressLine1) {
        this.tempAddressLine1 = tempAddressLine1;
    }

    public String getTempAddressLine2() {
        return tempAddressLine2;
    }

    public void setTempAddressLine2(String tempAddressLine2) {
        this.tempAddressLine2 = tempAddressLine2;
    }

    public String getTempCity() {
        return tempCity;
    }

    public void setTempCity(String tempCity) {
        this.tempCity = tempCity;
    }
}
