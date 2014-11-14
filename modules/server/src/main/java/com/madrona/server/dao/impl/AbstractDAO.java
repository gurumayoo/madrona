package com.madrona.server.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PreDestroy;
import java.io.Serializable;
import java.util.List;

@Repository
public abstract class AbstractDAO<T extends Serializable> implements Serializable {

    @Autowired
    protected SessionFactory sessionFactory;
    protected T object;
    protected Class clazz;

    public AbstractDAO(Class clazz) {
        this.clazz = clazz;
    }

    //Executes before being removed from container
    @PreDestroy
    protected void destroy() {
        sessionFactory.getCurrentSession().close();
    }

    public Session getHibernateSession() {
        return sessionFactory.openSession();
    }

    @Transactional
    protected T getById(int id) {
        String queryString = "from " + clazz.getSimpleName() + " where id = :id";
        Query query = getHibernateSession().createQuery(queryString);
        query.setInteger("id", id);
        object = (T) query.uniqueResult();
        return object;
    }

    @Transactional
    protected int deleteById(int id) {
        String queryString = "delete " + clazz.getSimpleName() + " where id = :id";
        Query query = getHibernateSession().createQuery(queryString);
        query.setInteger("id", id);
        return query.executeUpdate();
    }

    @Transactional
    protected boolean insert(T object) {
        try {
            getHibernateSession().save(object);
            return true;
        } catch (HibernateException ex) {
            return false;
        }
    }

    @Transactional
    protected boolean update(T object) {
        try {
            getHibernateSession().saveOrUpdate(object);
            return true;
        } catch (HibernateException ex) {
            return false;
        }
    }

    @Transactional
    protected List getAllRecords() {
        String queryString = "from " + clazz.getSimpleName();
        Query query = getHibernateSession().createQuery(queryString);
        return query.list();
    }
}