package com.madrona.web.handler;

import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.House;
import com.madrona.server.model.Student;

import java.util.List;


public interface GetRequestHandler {

    Student viewStudentById(String id);
}
