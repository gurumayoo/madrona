package com.madrona.server.dao.impl;

import com.madrona.server.dao.CommonDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommonDaoImpl implements CommonDao {

    private SessionFactory sessionFactory;

    @Override
    public void addItem(Object item) {
        Session session = sessionFactory.getCurrentSession();
        session.save(item);
    }

    @Override
    public List<Object> listItems(String obj) {
        String queryString = "from " + obj;
        return sessionFactory.getCurrentSession().createQuery(queryString).list();
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
