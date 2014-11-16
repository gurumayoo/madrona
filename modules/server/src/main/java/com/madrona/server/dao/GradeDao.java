package com.madrona.server.dao;

import com.madrona.server.model.Grade;

import java.util.List;

public interface GradeDao {

    public Grade getGradeById(int id);

    public int deleteGradeById(int id);

    public boolean addGrade(Grade grade);

    public boolean updateGrade(Grade grade);

    public List<Grade> getAllGrades();
}

