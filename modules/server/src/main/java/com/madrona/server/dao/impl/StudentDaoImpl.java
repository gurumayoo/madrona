package com.madrona.server.dao.impl;

import com.madrona.server.dao.StudentDao;
import com.madrona.server.model.Student;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentDaoImpl implements StudentDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void removeStudent(Integer id) {
        Student student = (Student) sessionFactory.getCurrentSession().load(Student.class, id);
        if (null != student) {
            sessionFactory.getCurrentSession().delete(student);
        }
    }

    public Student viewStudent(Integer id) {
        Student student = (Student) sessionFactory.getCurrentSession().get(Student.class, id);
        return student;
    }

    public List findStudentByFirstName(String firstName) {
        return null;  //To change body of implemented methods use File | Settings | File Templates
    }

    @Override
    public Student findStudentByLastName(String lastName) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Student findStudentByGrade(String grade) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Student findStudentByHouse(String house) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
