package com.madrona.server.service.impl;


import com.madrona.server.dao.*;
import com.madrona.server.model.*;
import com.madrona.server.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	private AuthDao authDao;

    @Transactional
    public void addUser(User user) {
        authDao.addUser(user);
    }

    @Transactional
    public void addUserRole(UserRole userRole) {
        authDao.addUserRole(userRole);
    }

    @Transactional
    public List<User> listUser() {
        return authDao.listUser();
    }

    @Transactional
    public void removeUser(Integer id) {
        authDao.removeUser(id);
    }

    @Transactional
    public String findNewUserId() {
        return authDao.findNewUserId();
    }

    @Transactional
    public User findUser(String userId) {
        return authDao.findUser(userId);
    }
}
