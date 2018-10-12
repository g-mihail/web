package com.vebinar.dao;

import com.vebinar.entity.Filter;
import com.vebinar.entity.Order;
import com.vebinar.entity.Status;
import com.vebinar.entity.User;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

//@Repository
public interface OrderDao extends JpaRepository<Order,Long> {

   // Order save(Order user);

  Page<Order> findAllByOrderByCreatedDesc(Pageable p);
  @Override
  <S extends Order> S save(S entity);



    @Override
    void delete(Order entity);

    @Override
  Optional<Order> findById(Long aLong);


    // Page<Order> findAll

    Page<Order> findByStatusOrderByCreatedDesc(Pageable p, Status status);

 List<Order> findByStatusOrderByCreatedDesc(Status status);

  Page<Order> findByUserOrderByCreatedDesc(User user, Pageable pageable);



  //Page<Order> findByCityOrderByCreatedDesc(Pageable p, String filter);

    Page<Order> findByCityAndStatusOrderByCreatedDesc(Pageable p, String filter, Status status);

    Page<Order> findDistinctIdByCityAndFilters_CategoryAndStatusOrderByCreatedDesc(Pageable p, String city, String category, Status status);

    Page<Order> findByCityAndFilters_CategoryAndFilters_SubcategoryAndStatusOrderByCreatedDesc(Pageable p, String city, String category, String subcategory, Status status);

    Page<Order> findByFilters_CategoryAndFilters_SubcategoryAndStatusOrderByCreatedDesc(Pageable p, String category, String subcategory, Status status);

    Page<Order> findDistinctIdByFilters_CategoryAndStatusOrderByCreatedDesc(Pageable p, String category, Status status);

}
