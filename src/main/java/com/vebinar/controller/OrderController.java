package com.vebinar.controller;


import com.vebinar.entity.Order;

import com.vebinar.entity.User;
import com.vebinar.service.OrderService;
import com.vebinar.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class OrderController {

    @Autowired
    public OrderService orderService;

    @Autowired
    public UserService userService;

    @GetMapping("/add")
    public String addorder() {
        return "add";
    }

    @PostMapping ("/add")
    public String addorder(@RequestParam(name ="title",required = false)  String title,
                           @RequestParam(name ="details",required = false) String details,
                           @RequestParam(name ="location",required = false) String location,
                           Model model) {
        model.addAttribute("title",title);
        model.addAttribute("details", details);
        model.addAttribute("location", location);
        return "add";

    }

 @PostMapping("/addorder")
    public String addorder(@RequestParam(name ="title",required = true)  String title,
                           @RequestParam(name ="details",required = true) String details,
                           @RequestParam(name ="location",required = true) String location,
                           @RequestParam(name ="price",required = false, defaultValue = "") String price,
                           @RequestParam(name ="phone",required = true) String phone,
                           @RequestParam(name ="name",required = true) String name,
                           Model model) throws Exception {
/*  @GetMapping("/addorder")
  public String add_order() {


          return "add";
      }*/

/*  @PostMapping("/addorder")
  public String addorder( Order order,
                         BindingResult result,
                         Model model) throws Exception {

     if (result.hasErrors()) {

         return "add";
     }
 */
       User u =new User();
       u.setPhone(phone);
       u.setName(name);
       u.setPassword("123456");
       //fff

        userService.save(u);
       User us = userService.getByPhone(phone);

      Order order = new Order();
       order.setBody(details);
       order.setUser(us);
       order.setCity(location);
       order.setPrice(price);
       order.setTitle(title);
      order.setUser(us);
      orderService.save(order);
        return "redirect:/orders";
    }

}
