package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Grade implements Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int gradeId;
    private String gradeName;
    private String gradeTeacher;

    public Grade() {
    }

    public Grade(String gradeName, String gradeTeacher) {
        this.gradeName = gradeName;
        this.gradeTeacher = gradeTeacher;
    }

    public int getGradeId() {
        return gradeId;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
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
}
