package com.madrona.server.service;



import com.madrona.server.model.User;
import com.madrona.server.model.UserRole;

import java.util.List;

public interface AuthService {

    public void addUser(User user);

    public void addUserRole(UserRole userRole);

    public List<User> listUser();

    public void removeUser(Integer id);

    public String findNewUserId();

    public User findUser(String userId);
}
