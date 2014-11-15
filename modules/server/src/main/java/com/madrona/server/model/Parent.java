package com.madrona.server.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Entity
public class Parent implements RequestMessage, Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int id;
    private String fatherName;
    private String fatherJob;
    private String motherName;
    private String motherJob;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getFatherJob() {
        return fatherJob;
    }

    public void setFatherJob(String fatherJob) {
        this.fatherJob = fatherJob;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getMotherJob() {
        return motherJob;
    }

    public void setMotherJob(String motherJob) {
        this.motherJob = motherJob;
    }


    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Parent{");
        sb.append("id=").append(id);
        sb.append(", fatherName='").append(fatherName).append('\'');
        sb.append(", fatherJob='").append(fatherJob).append('\'');
        sb.append(", motherName='").append(motherName).append('\'');
        sb.append(", motherJob='").append(motherJob).append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override
    public Map<String, Object> convertToMap() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("fatherName", fatherName);
        map.put("fatherJob", fatherJob);
        map.put("motherName", motherName);
        map.put("motherJob", motherJob);
        return map;
    }
}
