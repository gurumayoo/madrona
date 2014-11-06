package com.madrona.server.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Entity
public class House implements RequestMessage, Serializable {

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

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer();
        sb.append("House");
        sb.append("{houseId=").append(houseId);
        sb.append(", houseName='").append(houseName).append('\'');
        sb.append(", houseColor='").append(houseColor).append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override
    public Map<String, Object> convertToMap() {
        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("houseId", houseId);
        map.put("houseName", houseName);
        map.put("houseColor", houseColor);
        return map;
    }
}
