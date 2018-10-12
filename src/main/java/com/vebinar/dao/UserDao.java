package com.vebinar.dao;

import com.vebinar.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserDao extends JpaRepository<User,Long> {

   // void save(User user);

    @Override
    <S extends User> S save(S entity);


    //User getByPhone(String phone);


   // User getById(int id);

    @Override
    Optional<User> findById(Long aLong);


    // List<User> getByEmail(String email);

   // List<User> findAll();

   // void update(User user);


   // void delete(int id);


    @Override
    void deleteById(Long aLong);


  User findByPhone(String phone);

  User findByName(String name);
}


//