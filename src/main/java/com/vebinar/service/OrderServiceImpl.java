package com.vebinar.service;

import com.vebinar.dao.OrderDao;
import com.vebinar.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements  OrderService {

    @Autowired
    public OrderDao orderDao;


    public void save(Order order) throws Exception {
        orderDao.save(order);
    }
}
