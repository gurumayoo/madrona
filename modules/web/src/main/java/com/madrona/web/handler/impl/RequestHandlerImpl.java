package com.madrona.web.handler.impl;

import com.madrona.server.model.AbstractResponse;
import com.madrona.server.model.Grade;
import com.madrona.server.model.House;
import com.madrona.server.model.Student;
import com.madrona.web.handler.RequestHandler;
import com.madrona.web.http.HttpClient;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RequestHandlerImpl implements RequestHandler {

    private Map<String, String> urlMap;
    private Map<String, HttpClient> clientMap;

    public void init() {
        clientMap = new HashMap<>();
        for (Map.Entry<String, String> urls : urlMap.entrySet()) {
            HttpClient client = new HttpClient(urls.getValue());
            client.init();
            clientMap.put(urls.getKey(), client);
        }
    }

    @Override
    public AbstractResponse createHouse(House house) {
        return clientMap.get("AddHouse").send(house.convertToMap());
    }

    @Override
    public AbstractResponse createStudent(Student student) {
        return clientMap.get("AddStudent").send(student.convertToMap());
    }

    @Override
    public AbstractResponse createGrade(Grade grade) {
        return clientMap.get("AddGrade").send(grade.convertToMap());
    }

    @Override
    public AbstractResponse deleteHouse(final String houseId) {
        Map<String, Object> map = new HashMap<>();
        map.put("id", houseId);
        return clientMap.get("DeleteHouse").send(map);
    }

    @Override
    public List<House> listAllHouses() {
        return clientMap.get("GetAllHouses").getAllItems(House.class);
    }

    @Override
    public List<Student> listAllStudents() {
        return clientMap.get("GetAllStudents").getAllItems(Student.class);
    }

    @Override
    public List<Grade> listAllGrades() {
        return clientMap.get("GetAllGrades").getAllItems(Grade.class);
    }


    public void setUrlMap(Map<String, String> urlMap) {
        this.urlMap = urlMap;
    }
}
