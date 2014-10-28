package com.madrona.server.model;

import javax.persistence.*;

@Entity
public class Subject {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int subjectId;
    private String subjectName;

    public Subject() {
    }

    public Subject(String subjectName) {
        this.subjectName = subjectName;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }
}
