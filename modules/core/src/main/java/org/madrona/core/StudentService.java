package org.madrona.core;

import com.madrona.common.Student;

import java.time.LocalDate;

public class StudentService {

    public void createStudentObject(){
        Student student = new Student();
        student.setDateOfBirth(LocalDate.now());
    }
}
