package com.madrona.server.service;

import com.madrona.server.model.Student;

public interface StudentService {

    public void removeStudent(Integer id);

    public Student viewStudent(Integer id);

    public Student findStudentByFirstName(String firstName);
}
