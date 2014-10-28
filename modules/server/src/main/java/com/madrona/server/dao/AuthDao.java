package com.madrona.server.dao;



import com.madrona.server.model.User;
import com.madrona.server.model.UserRole;

import java.util.List;

public interface AuthDao {

    public void addUser(User user);

    public void addUserRole(UserRole userRole);

    public List<User> listUser();

    public void removeUser(Integer id);

    public String findNewUserId();

    public User findUser(String userId);
}

