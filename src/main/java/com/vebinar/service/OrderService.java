package com.vebinar.service;

import com.vebinar.dto.OrderOutForm;
import com.vebinar.entity.Filter;
import com.vebinar.entity.Order;
import com.vebinar.entity.Status;
import com.vebinar.entity.User;
import com.vebinar.utils.ListandCount;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

public interface OrderService {

    void save(Order order) throws Exception;

    ListandCount findByStatusOrderByCreatedDesc(int page, Status status);

    List<Order> findByStatusOrderByCreatedDesc(Status status);


    Optional<Order> findById(Long id);

    ListandCount findByUserOrderByCreatedDesc(User user, int page);


    ListandCount findByCityAndStatusOrderByCreatedDesc(int paget, String filter, Status status);

    ListandCount findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(int paget, String city, String category, Status status);

    ListandCount findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(int paget, String city, String category, String subcategory, Status status);

    ListandCount findByFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(int paget, String category, String subcategory, Status status);

    ListandCount findByFiltersCategoryAndStatusOrderByCreatedDesc(int paget, String category, Status status);


    String getonRusforDb(String eng);

    void delete(Order order);
}
