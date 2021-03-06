package com.madrona.web.handler;

import com.madrona.server.model.Grade;
import com.madrona.server.model.House;
import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Student;

import java.util.List;


public interface RequestHandler {

    AbstractResponse createHouse(House house);
    AbstractResponse createStudent(Student student);
    AbstractResponse createGrade(Grade grade);

    AbstractResponse deleteHouse(String houseId);

    List<House> listAllHouses();
    List<Student> listAllStudents();
    List<Grade> listAllGrades();
}
