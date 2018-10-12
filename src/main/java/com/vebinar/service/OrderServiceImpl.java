package com.vebinar.service;

import com.vebinar.dao.OrderDao;
import com.vebinar.dto.OrderOutForm;
import com.vebinar.entity.Filter;
import com.vebinar.entity.Order;
import com.vebinar.entity.Status;
import com.vebinar.entity.User;
import com.vebinar.utils.ListandCount;
import org.ocpsoft.prettytime.PrettyTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class OrderServiceImpl implements  OrderService {



  @Autowired
    public OrderDao orderDao;

    @Autowired
    public OrderOutForm orderDtoform;

   @Override
    public void save(Order order) throws Exception {
      Order o =  orderDao.save(order);
    }

    public void delete(Order order)
    {
        orderDao.delete(order);
    }



    @Override
    public ListandCount findByStatusOrderByCreatedDesc(int page, Status status) {
       Pageable p = new PageRequest(page-1,2);
       Page<Order> pageOrder = orderDao.findByStatusOrderByCreatedDesc(p, status);
       Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }

    @Override
    public List<Order> findByStatusOrderByCreatedDesc(Status status) {
        return orderDao.findByStatusOrderByCreatedDesc(status);
    }


    @Override
    public ListandCount findByUserOrderByCreatedDesc(User user, int page) {
        Pageable p = new PageRequest(page-1,2);
        Page<Order> pageOrder = orderDao.findByUserOrderByCreatedDesc(user,p);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }





    @Override
    public ListandCount findByCityAndStatusOrderByCreatedDesc(int paget, String filter, Status status) {
        Pageable p = new PageRequest(paget-1,2);
        Page<Order> pageOrder = orderDao.findByCityAndStatusOrderByCreatedDesc(p,filter, status);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }

    @Override
    public ListandCount findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(int paget, String city, String category, Status status) {
        Pageable p = new PageRequest(paget-1,2);
        Page<Order> pageOrder = orderDao.findDistinctIdByCityAndFilters_CategoryAndStatusOrderByCreatedDesc(p,city,category, status);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }

    @Override
    public ListandCount findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(int paget, String city, String category, String subcategory, Status status) {
        Pageable p = new PageRequest(paget-1,2);
        Page<Order> pageOrder = orderDao.findByCityAndFilters_CategoryAndFilters_SubcategoryAndStatusOrderByCreatedDesc(p,city,category,subcategory, status);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }

    @Override
    public ListandCount findByFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(int paget, String category, String subcategory, Status status) {
        Pageable p = new PageRequest(paget-1,2);
        Page<Order> pageOrder = orderDao.findByFilters_CategoryAndFilters_SubcategoryAndStatusOrderByCreatedDesc(p,category,subcategory, status);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }

    @Override
    public ListandCount findByFiltersCategoryAndStatusOrderByCreatedDesc(int paget, String category, Status status) {
        Pageable p = new PageRequest(paget-1,2);
        Page<Order> pageOrder = orderDao.findDistinctIdByFilters_CategoryAndStatusOrderByCreatedDesc(p,category, status);
        Integer pageCount =pageOrder.getTotalPages();
        ListandCount l = new ListandCount(converttoOutForm(pageOrder),pageCount);
        return l;
    }


    @Override
    public Optional<Order> findById(Long id) {
        return orderDao.findById(id);
    }



    private List<OrderOutForm> converttoOutForm(Page<Order> orders) {

            List<OrderOutForm> list = new ArrayList<>();
            for (Order order : orders) {
                list.add(convertOrdertoOrderOutForm(order));
            }
            return  list;
    }

        private OrderOutForm convertOrdertoOrderOutForm(Order order) {
            OrderOutForm orderOutForm = new OrderOutForm();
            orderOutForm.setBody(order.getBody());
            orderOutForm.setCity(order.getCity());
            orderOutForm.setId(order.getId());
            orderOutForm.setPrice(order.getPrice());
            orderOutForm.setTitle(order.getTitle());
            orderOutForm.setStatus(order.getStatus().getDescription());

            // SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            PrettyTime p = new PrettyTime(new Locale("ru"));
            String date = p.format(order.getCreated());
            orderOutForm.setTimeago(date);
            return orderOutForm;
        }

        public String getonRusforDb(String eng) {
       Map<String, String> map = new HashMap<>();
       map.put("barnaul", "Барнаул" );
       map.put("zarinsk", "Заринск" );
       map.put("bijsk", "Бийск" );
       return  map.get(eng);


        }

}
