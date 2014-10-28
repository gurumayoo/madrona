package com.madrona.server.dao.impl;

import com.madrona.server.dao.AuthDao;
import com.madrona.server.model.User;
import com.madrona.server.model.UserRole;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AuthDaoImpl implements AuthDao {

    private static final Logger logger = LoggerFactory.getLogger(AuthDaoImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
        logger.debug("New user account [{}] has been inserted into database successfully.", user);
    }

    @Override
    public void addUserRole(UserRole userRole) {
        sessionFactory.getCurrentSession().save(userRole);
        logger.debug("New user role [{}] has been inserted into database successfully.", userRole);
    }

    @Override
    public List<User> listUser() {
        return sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public void removeUser(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().load(User.class, id);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public String findNewUserId() {
        List results = sessionFactory.getCurrentSession().createQuery("select max(userId) from User").list();
        String newUserId = "U1001";
        if(results.get(0) != null){
            String lastId = (String)results.get(0);
            newUserId = "U" + (Integer.parseInt(lastId.substring(1)) + 1);
        }
        return newUserId;
    }

    @Override
    public User findUser(String userId) {
        String hqlQuery = "from User where userId = :userId";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("userId", userId);
        User user = (User) query.list().get(0);
        logger.info("Found user details for " + userId + " is " + user.getFirstName());
        return user;
    }
}
