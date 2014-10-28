package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class House implements Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int houseId;
    private String houseName;
    private String houseColor;

    public House() {
    }

    public House(String houseName, String houseColor) {
        this.houseName = houseName;
        this.houseColor = houseColor;
    }

    public int getHouseId() {
        return houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
    }

    public String getHouseName() {
        return houseName;
    }

    public void setHouseName(String houseName) {
        this.houseName = houseName;
    }

    public String getHouseColor() {
        return houseColor;
    }

    public void setHouseColor(String houseColor) {
        this.houseColor = houseColor;
    }
}
