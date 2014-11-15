package com.madrona.server.dao;

import com.madrona.server.model.House;
import com.madrona.server.model.Student;

import java.util.List;

public interface StudentDao {

    public Student getStudentById(int id);

    public int deleteStudentById(int id);

    public boolean addStudent(Student student);

    public boolean updateStudent(Student student);

    public List<Student> getAllStudents();
}

