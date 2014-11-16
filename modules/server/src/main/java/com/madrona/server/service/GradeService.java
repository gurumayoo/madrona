package com.madrona.server.service;

import com.madrona.server.model.Grade;

import java.util.List;

public interface GradeService {

    public Grade getGradeById(int id);

    public int deleteGradeById(int id);

    public boolean addGrade(Grade student);

    public boolean updateGrade(Grade student);

    public List<Grade> getAllGrades();
}
