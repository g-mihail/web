package com.vebinar.mapper;

import com.vebinar.entity.Order;
import com.vebinar.entity.User;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper  implements RowMapper<Order> {
    @Override
    public Order mapRow(ResultSet resultSet, int i) throws SQLException {
        Order order = new Order();
        order.setId(resultSet.getLong("id"));
        order.setTitle(resultSet.getString("title"));
        order.setBody(resultSet.getString("body"));
        order.setCity(resultSet.getString("city"));
        order.setPrice(resultSet.getString("price"));
        order.setCreated(resultSet.getTimestamp("created"));

        User user =  new User();
        user.setPhone(resultSet.getString("phone"));

        order.setUser(user);

        return order;
    }
}
