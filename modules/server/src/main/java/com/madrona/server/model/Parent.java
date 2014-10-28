package com.madrona.server.model;


import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Parent implements Serializable{

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int parentId;
    private String fatherFirstName;
    private String fatherLastName;
    private String fatherJob;
    private String fatherDateOfBirth;
    private String motherFirstName;
    private String motherLastName;
    private String motherJob;
    private String motherDateOfBirth;

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public String getFatherFirstName() {
        return fatherFirstName;
    }

    public void setFatherFirstName(String fatherFirstName) {
        this.fatherFirstName = fatherFirstName;
    }

    public String getFatherLastName() {
        return fatherLastName;
    }

    public void setFatherLastName(String fatherLastName) {
        this.fatherLastName = fatherLastName;
    }

    public String getFatherJob() {
        return fatherJob;
    }

    public void setFatherJob(String fatherJob) {
        this.fatherJob = fatherJob;
    }

    public String getFatherDateOfBirth() {
        return fatherDateOfBirth;
    }

    public void setFatherDateOfBirth(String fatherDateOfBirth) {
        this.fatherDateOfBirth = fatherDateOfBirth;
    }

    public String getMotherFirstName() {
        return motherFirstName;
    }

    public void setMotherFirstName(String motherFirstName) {
        this.motherFirstName = motherFirstName;
    }

    public String getMotherLastName() {
        return motherLastName;
    }

    public void setMotherLastName(String motherLastName) {
        this.motherLastName = motherLastName;
    }

    public String getMotherJob() {
        return motherJob;
    }

    public void setMotherJob(String motherJob) {
        this.motherJob = motherJob;
    }

    public String getMotherDateOfBirth() {
        return motherDateOfBirth;
    }

    public void setMotherDateOfBirth(String motherDateOfBirth) {
        this.motherDateOfBirth = motherDateOfBirth;
    }
}
