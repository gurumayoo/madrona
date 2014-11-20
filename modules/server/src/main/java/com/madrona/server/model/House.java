package com.madrona.server.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Entity
public class House implements RequestMessage, Serializable {

    private static final long serialVersionUID = -6790693372846798580L;

    @Id
    @GeneratedValue
    private int id;
    private String houseName;
    private String houseColor;
    private Date createDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("House");
        sb.append("{id=").append(id);
        sb.append(", houseName='").append(houseName).append('\'');
        sb.append(", houseColor='").append(houseColor).append('\'');
        sb.append(", createDate='").append(createDate).append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override
    public Map<String, Object> convertToMap() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("houseName", houseName);
        map.put("houseColor", houseColor);
        map.put("createDate", createDate);
        return map;
    }
}
