package com.madrona.server.dao.impl;

import com.madrona.server.dao.StudentDao;
import com.madrona.server.model.House;
import com.madrona.server.model.Student;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentDaoImpl extends AbstractDAO<Student> implements StudentDao {

    public StudentDaoImpl() {
        super(Student.class);
    }

    @Override
    public Student getStudentById(int id) {
        return super.getById(id);
    }

    @Override
    public int deleteStudentById(int id) {
        return super.deleteById(id);
    }

    @Override
    public boolean addStudent(Student student) {
        return super.insert(student);
    }

    @Override
    public boolean updateStudent(Student student) {
        return super.update(student);
    }

    @Override
    public List<Student> getAllStudents() {
        return super.getAllRecords();
    }
}
