package com.vebinar.service;

import com.vebinar.dao.UserDao;
import com.vebinar.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserDetailsService {


    @Autowired
    private UserDao userDao;

  //  @Autowired
  //  private RoleDao roleDao;

    public List<User> findAll() {
        return userDao.findAll();
    }

    public void save(User user) throws Exception {
        if (user.getName().length() < 2) {
            throw new Exception();
        }
        userDao.save(user);
    }

    public User getById(Long id) {
        return userDao.findById(id).get();
    }

   /* public void update(User user) {
        userDao.update(user);
    }*/

    public void delete(Long id) {
        userDao.deleteById(id);

    }



  /*  public List<User> getByEmail(String enail) {
        return userDao.getByEmail(enail);
    }*/

    public User getByPhone(String phone) {
        return userDao.findByPhone(phone);
    }

    @Override
    public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
        return userDao.findByName(name);
    }
}
