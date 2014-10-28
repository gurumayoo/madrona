package com.madrona.server.dao;

import java.util.List;

public interface CommonDao {

    public void addItem(Object item);

    public List<Object> listItems(String obj);
}
