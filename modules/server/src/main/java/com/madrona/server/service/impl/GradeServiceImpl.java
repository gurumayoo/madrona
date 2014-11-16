package com.madrona.server.service.impl;


import com.madrona.server.dao.GradeDao;
import com.madrona.server.model.Grade;
import com.madrona.server.service.GradeService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GradeServiceImpl implements GradeService {

	private GradeDao gradeDao;

    @Override
    public Grade getGradeById(int id) {
        return gradeDao.getGradeById(id);
    }

    @Override
    public int deleteGradeById(int id) {
        return gradeDao.deleteGradeById(id);
    }

    @Override
    public boolean addGrade(Grade student) {
        return gradeDao.addGrade(student);
    }

    @Override
    public boolean updateGrade(Grade student) {
        return gradeDao.updateGrade(student);
    }

    @Override
    public List<Grade> getAllGrades() {
        return gradeDao.getAllGrades();
    }

    public void setGradeDao(GradeDao studentDao) {
        this.gradeDao = studentDao;
    }
}
