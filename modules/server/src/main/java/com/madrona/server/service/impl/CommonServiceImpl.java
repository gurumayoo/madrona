package com.madrona.server.service.impl;


import com.madrona.server.dao.CommonDao;
import com.madrona.server.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CommonServiceImpl implements CommonService {

    private CommonDao commonDao;

    @Transactional
    public void addItem(Object item) {
        commonDao.addItem(item);
    }

    @Transactional
    public List<Object> listItems(String obj) {
        return commonDao.listItems(obj);
    }

    public void setCommonDao(CommonDao commonDao) {
        this.commonDao = commonDao;
    }
}
