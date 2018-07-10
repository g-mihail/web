package com.vebinar.dao;

import com.vebinar.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao {

    @Autowired
    public JdbcTemplate jdbcTemplate;


    public void save(Order order) {
       String sql = "INSERT INTO vebinar.orders (title, body, id_user, city, price) VALUES (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, order.getTitle(), order.getBody(),order.getUser().getId() ,order.getCity(),order.getPrice());

    }
}
