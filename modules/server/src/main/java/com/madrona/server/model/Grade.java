package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Entity
public class Grade implements RequestMessage, Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int id;
    private String gradeName;
    private String gradeTeacher;

    public Grade() {
    }

    public Grade(String gradeName, String gradeTeacher) {
        this.gradeName = gradeName;
        this.gradeTeacher = gradeTeacher;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    public String getGradeTeacher() {
        return gradeTeacher;
    }

    public void setGradeTeacher(String gradeTeacher) {
        this.gradeTeacher = gradeTeacher;
    }

    @Override
    public Map<String, Object> convertToMap() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("gradeName", gradeName);
        map.put("gradeTeacher", gradeTeacher);
        return map;
    }
}
