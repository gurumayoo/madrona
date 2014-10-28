package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Student extends Address implements Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int studentId;
    private String firstName;
    private String lastName;
    private String dateOfBirth;
    private String grade;
    private String gender;
    private String emailAddress;
    private String mobileNumber;
    private String houseId;

    public Student(String firstName, String lastName, String dateOfBirth, String grade, String gender,
                   String permanentAddressLine1, String permanentAddressLine2, String permanentCity,
                   String tempAddressLine1, String tempAddressLine2, String tempCity, String emailAddress,
                   String mobileNumber, String houseId) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.grade = grade;
        this.gender = gender;
        this.permanentAddressLine1 = permanentAddressLine1;
        this.permanentAddressLine2 = permanentAddressLine2;
        this.permanentCity = permanentCity;
        this.tempAddressLine1 = tempAddressLine1;
        this.tempAddressLine2 = tempAddressLine2;
        this.tempCity = tempCity;
        this.emailAddress = emailAddress;
        this.mobileNumber = mobileNumber;
        this.houseId = houseId;
    }

    public Student() {
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
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

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getHouseId() {
        return houseId;
    }

    public void setHouseId(String houseId) {
        this.houseId = houseId;
    }
}
