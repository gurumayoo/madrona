package com.madrona.server.service;

import com.madrona.server.model.House;

import java.util.List;

public interface SportService {

    public House getHouseById(int id);

    public int deleteHouseById(int id);

    public boolean addHouse(House house);

    public boolean updateHouse(House house);

    public List<House> getAllHouses();
}
