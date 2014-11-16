package com.madrona.server.dao.impl;

import com.madrona.server.dao.GradeDao;
import com.madrona.server.model.Grade;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GradeDaoImpl extends AbstractDAO<Grade> implements GradeDao {

    public GradeDaoImpl() {
        super(Grade.class);
    }

    @Override
    public Grade getGradeById(int id) {
        return super.getById(id);
    }

    @Override
    public int deleteGradeById(int id) {
        return super.deleteById(id);
    }

    @Override
    public boolean addGrade(Grade student) {
        return super.insert(student);
    }

    @Override
    public boolean updateGrade(Grade student) {
        return super.update(student);
    }

    @Override
    public List<Grade> getAllGrades() {
        return super.getAllRecords();
    }
}
