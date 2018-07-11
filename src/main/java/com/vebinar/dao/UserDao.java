package com.vebinar.dao;

import com.vebinar.entity.User;

import java.util.List;

public interface UserDao {

    void save(User user);

    User getByPhone(String phone);

    User getById(int id);

    List<User> getByEmail(String email);

    List<User> findAll();

    void update(User user);

    void delete(int id);

}
//