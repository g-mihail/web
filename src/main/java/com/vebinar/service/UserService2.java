package com.vebinar.service;

import com.vebinar.entity.User;

import java.util.List;

public interface UserService2 {

     List<User> findAll();

    void save(User user) throws Exception;

    User getById(Long id);

  //  void update(User user);

   void delete(Long id);

  //  List<User> getByEmail(String enail);

  User getByPhone(String phone);
}
