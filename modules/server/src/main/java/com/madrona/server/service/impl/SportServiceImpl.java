package com.madrona.server.service.impl;

import com.madrona.server.dao.impl.SportDAOImpl;
import com.madrona.server.model.House;
import com.madrona.server.service.SportService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SportServiceImpl implements SportService {

    private SportDAOImpl sportDAO;

    @Override
    public House getHouseById(int id) {
        return sportDAO.getHouseById(id);
    }

    @Override
    public int deleteHouseById(int id) {
        return sportDAO.deleteHouseById(id);
    }

    @Override
    public boolean addHouse(House house) {
        return sportDAO.addHouse(house);
    }

    @Override
    public boolean updateHouse(House house) {
        return sportDAO.updateUser(house);
    }

    @Override
    public List<House> getAllHouses() {
        return sportDAO.getAllHouses();
    }

    public void setSportDAO(SportDAOImpl sportDAO) {
        this.sportDAO = sportDAO;
    }
}
