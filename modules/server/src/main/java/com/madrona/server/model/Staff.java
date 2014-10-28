package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Staff extends Address implements Serializable{

    @Id
    @GeneratedValue
    private int staffId;
    private String firstName;
    private String lastName;
    private String gender;
    private String dateOfBirth;
    private String emailAddress;
    private String mobile;
    private String completedDegree;
    private String staffStatus;

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

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

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCompletedDegree() {
        return completedDegree;
    }

    public void setCompletedDegree(String completedDegree) {
        this.completedDegree = completedDegree;
    }

    public String getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(String staffStatus) {
        this.staffStatus = staffStatus;
    }
}
