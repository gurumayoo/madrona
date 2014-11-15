package com.madrona.server.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Entity
public class Student implements RequestMessage, Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int id;
    private String firstName;
    private String lastName;
    private String dateOfBirth;
    private String grade;
    private String gender;
    private String emailAddress;
    private String mobileNumber;
    private String houseId;

    public Student() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    @Override
    public Map<String, Object> convertToMap() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("firstName", firstName);
        map.put("lastName", lastName);
        map.put("dateOfBirth", dateOfBirth);
        map.put("gender", gender);
        map.put("grade", grade);
        map.put("emailAddress", emailAddress);
        map.put("mobileNumber", mobileNumber);
        map.put("houseId", houseId);
        return map;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Student{");
        sb.append("id=").append(id);
        sb.append(", firstName='").append(firstName).append('\'');
        sb.append(", lastName='").append(lastName).append('\'');
        sb.append(", dateOfBirth='").append(dateOfBirth).append('\'');
        sb.append(", grade='").append(grade).append('\'');
        sb.append(", gender='").append(gender).append('\'');
        sb.append(", emailAddress='").append(emailAddress).append('\'');
        sb.append(", mobileNumber='").append(mobileNumber).append('\'');
        sb.append(", houseId='").append(houseId).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
