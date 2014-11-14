package com.madrona.server.dao.impl;

import com.madrona.server.model.House;

import java.util.List;


public class SportDAOImpl extends AbstractDAO<House> {

    public SportDAOImpl() {
        super(House.class);
    }

    public House getHouseById(int id) {
        return super.getById(id);
    }

    public int deleteHouseById(int id) {
        return super.deleteById(id);
    }

    public boolean addHouse(House house) {
        return super.insert(house);
    }

    public boolean updateUser(House user) {
        return super.update(user);
    }

    public List<House> getAllHouses() {
        return super.getAllRecords();
    }


}
