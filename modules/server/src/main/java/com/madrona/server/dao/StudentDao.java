package com.madrona.server.dao;

import com.madrona.server.model.Student;

import java.util.List;

public interface StudentDao {

    public void removeStudent(Integer id);

    public Student viewStudent(Integer id);

    public List findStudentByFirstName(String firstName);

    public Student findStudentByLastName(String lastName);

    public Student findStudentByGrade(String grade);

    public Student findStudentByHouse(String house);


}

