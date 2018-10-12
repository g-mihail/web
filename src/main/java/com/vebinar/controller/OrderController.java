package com.vebinar.controller;


import com.vebinar.dto.PaginationDate;
import com.vebinar.entity.*;

import com.vebinar.service.OrderService;
import com.vebinar.service.UserService;
import com.vebinar.service.UserService2;
import com.vebinar.utils.ListandCount;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.*;
import java.util.stream.Stream;

@Controller
@RequestMapping("/")
public class OrderController {

    private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

    @Autowired
    public OrderService orderService;

    @Autowired
    public UserService userService;

    @Value("${upload.path}")
    private String uploadPath;

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
    public String addoneorder(@RequestParam(name ="title",required = true)  String title,
                              @RequestParam(name ="details",required = true) String details,
                              @RequestParam(name ="location",required = true) String location,
                              @RequestParam(name ="price",required = true, defaultValue = "") String price,
                              @RequestParam(name ="phone",required = false) String phone,
                              @RequestParam(name ="name",required = false) String name,
                              @RequestParam(value = "file", required = false) List<MultipartFile> files,
                              @AuthenticationPrincipal User user,
                              Model model) throws Exception {


/*  @PostMapping("/addorder")
  public String addorder( Order order,
                         BindingResult result,
                         Model model) throws Exception {

     if (result.hasErrors()) {

         return "add";
     }
 */


if (user != null)
{

    Order order = new Order();

    File uploadDir = new File(uploadPath);

    if (!uploadDir.exists()) {
        uploadDir.mkdir();
    }
    List<Scan> resultFilename = new ArrayList<>();
    for (int i = 0; i < files.size(); i++) {


        if (files.get(i) != null && !files.get(i).getOriginalFilename().isEmpty()) {

            String uuidFile = UUID.randomUUID().toString();

            Scan scan = new Scan();
            scan.setUuidname(uuidFile + "." + files.get(i).getOriginalFilename());
            scan.setOrder(order);

            resultFilename.add(scan);

            files.get(i).transferTo(new File(uploadPath + "/" + resultFilename.get(i).getUuidname()));

            //order.setFilename(resultFilename);


        }


    }

    order.setFilenames(resultFilename);

    order.setBody(details);

    order.setCity(location);
    order.setPrice(price);
    order.setTitle(title);

    order.setStatus(Status.MODERATION);
    order.setUser(user);

    orderService.save(order);



    return "redirect:/orders";
}
else {


    User u = new User();
    u.setPhone(phone);
    u.setName(name);
    u.setActive(true);
    u.setRoles(Collections.singleton(Role.USER));
    u.setPassword("123456");
    //fff

    userService.save(u);
    User us = userService.getByPhone(phone);

    Order order = new Order();

    File uploadDir = new File(uploadPath);

    if (!uploadDir.exists()) {
        uploadDir.mkdir();
    }
    List<Scan> resultFilename = new ArrayList<>();
    for (int i = 0; i < files.size(); i++) {


        if (files.get(i) != null && !files.get(i).getOriginalFilename().isEmpty()) {

            String uuidFile = UUID.randomUUID().toString();

            Scan scan = new Scan();
            scan.setUuidname(uuidFile + "." + files.get(i).getOriginalFilename());
            scan.setOrder(order);

            resultFilename.add(scan);

            files.get(i).transferTo(new File(uploadPath + "/" + resultFilename.get(i).getUuidname()));

            //order.setFilename(resultFilename);


        }


    }

    order.setFilenames(resultFilename);



    order.setBody(details);

    order.setCity(location);
    order.setPrice(price);
    order.setTitle(title);

    order.setStatus(Status.MODERATION);
    order.setUser(us);

    orderService.save(order);

    return "redirect:/orders";
}

    }


    @GetMapping("/orders")
    public String showPage (Model model,
                            HttpSession s,
                            @RequestParam(required = false, defaultValue = "") String city,
                            @RequestParam(required = false, defaultValue = "") String cityb,
                            @RequestParam(required = false, defaultValue = "") String category,
                            @RequestParam(required = false, defaultValue = "") String subcategory,
                            @RequestParam(defaultValue ="1") int page) {



        int paget = page;
        if (page<1)
        {
            paget=1;
        }
        System.out.println("CITY" + " " +city);

        if (category != null && !category.isEmpty()) //есть категория
        {
            if (subcategory != null && !subcategory.isEmpty()) { //есть категория, есть сабкатегория

                if (city != null && !city.isEmpty()) //есть город
                {

                    ListandCount list = orderService.findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city),category,subcategory, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                    model.addAttribute("city", city);

                    model.addAttribute("cityb", city);

                    model.addAttribute("cat", category);
                    model.addAttribute("subcat", subcategory);



                }
                else if (cityb != null && !cityb.isEmpty()) {

                    ListandCount list = orderService.findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb),category,subcategory, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                    model.addAttribute("city", city);

                    model.addAttribute("cityb", city);

                    model.addAttribute("cat", category);
                    model.addAttribute("subcat", subcategory);





                } else { //нет города

                    ListandCount list = orderService.findByFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, category,subcategory, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));

                    model.addAttribute("cat", category);
                    model.addAttribute("subcat", subcategory);

                }

            }
            else { //есть категория, нет сабкатегории

                if (city != null && !city.isEmpty())
                {
                    ListandCount list = orderService.findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city),category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                    model.addAttribute("city", city);

                    model.addAttribute("cityb", city);

                    model.addAttribute("cat", category);
                   // model.addAttribute("subcat", subcategory);

                }
                else if (cityb != null && !cityb.isEmpty()) {

                    ListandCount list = orderService.findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb),category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
                    model.addAttribute("cityb",cityb);

                    model.addAttribute("city",cityb);

                    model.addAttribute("cat", category);
                    //model.addAttribute("subcat", subcategory);

                } else {

                    ListandCount list = orderService.findByFiltersCategoryAndStatusOrderByCreatedDesc(paget, category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));

                    model.addAttribute("cat", category);
                    //model.addAttribute("subcat", subcategory);

                }

            }


        }
        else { //нет категории проверяем на город
            if (city != null && !city.isEmpty()) {
                // messages = messageRepo.findByTag(filter);
                ListandCount list = orderService.findByCityAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city), Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                model.addAttribute("city", city);

                model.addAttribute("cityb", city);

            } else if (cityb != null && !cityb.isEmpty()) {
                ListandCount list = orderService.findByCityAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb), Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                model.addAttribute("cityb", cityb);

                model.addAttribute("city", cityb);
            } else {
                ListandCount list = orderService.findByStatusOrderByCreatedDesc(paget, Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
            }


        }
        return "orders";

    }

    @PostMapping("/orders")
    public String showPagePost (HttpSession s, Model model,
                                @RequestParam(required = false, defaultValue = "") String city,
                                @RequestParam(required = false, defaultValue = "") String cityb,
                                @RequestParam(required = false, defaultValue = "") String category,
                                @RequestParam(required = false, defaultValue = "") String subcategory,
                                @RequestParam(defaultValue ="1") int page) {
        int paget = page;
        if (page<1)
        {
            paget=1;
        }

       if  (subcategory.equals("Все подкатегории"))
        {
            subcategory="";
        }
        System.out.println("CITY" + " " +city);

        if (category != null && !category.isEmpty()) //есть категория
        {
            if (subcategory != null && !subcategory.isEmpty()) { //есть категория, есть сабкатегория

                    if (city != null && !city.isEmpty()) //есть город
                    {

                        ListandCount list = orderService.findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city),category,subcategory, Status.ACTIVE);
                        model.addAttribute("orders", list.getListorderOutForm());
                        model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                        model.addAttribute("city", city);

                        model.addAttribute("cityb", city);

                        model.addAttribute("cat", category);
                        model.addAttribute("subcat", subcategory);


                    }
                    else if (cityb != null && !cityb.isEmpty()) {

                        ListandCount list = orderService.findByCityAndFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb),category,subcategory, Status.ACTIVE);
                        model.addAttribute("orders", list.getListorderOutForm());
                        model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                        model.addAttribute("city", cityb);

                        model.addAttribute("cityb", cityb);

                        model.addAttribute("cat", category);
                        model.addAttribute("subcat", subcategory);





                    } else { //нет города

                        ListandCount list = orderService.findByFiltersCategoryAndFiltersSubcategoryAndStatusOrderByCreatedDesc(paget, category,subcategory, Status.ACTIVE);
                        model.addAttribute("orders", list.getListorderOutForm());
                        model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));

                        model.addAttribute("cat", category);
                        model.addAttribute("subcat", subcategory);
                    }

            }
                else { //есть категория, нет сабкатегории

                if (city != null && !city.isEmpty())
                {
                    ListandCount list = orderService.findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city),category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                    model.addAttribute("city", city);

                    model.addAttribute("cityb", city);

                    model.addAttribute("cat", category);
                    //model.addAttribute("subcat", subcategory);

                }
                else if (cityb != null && !cityb.isEmpty()) {

                    ListandCount list = orderService.findByCityAndFiltersCategoryAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb),category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
                    model.addAttribute("cityb",cityb);

                    model.addAttribute("city",cityb);

                    model.addAttribute("cat", category);
                    //model.addAttribute("subcat", subcategory);

                } else {

                    ListandCount list = orderService.findByFiltersCategoryAndStatusOrderByCreatedDesc(paget, category, Status.ACTIVE);
                    model.addAttribute("orders", list.getListorderOutForm());
                    model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));

                    model.addAttribute("cat", category);
                   // model.addAttribute("subcat", subcategory);

                }

            }


        }
        else { //нет категории проверяем на город
            if (city != null && !city.isEmpty()) {
                // messages = messageRepo.findByTag(filter);
                ListandCount list = orderService.findByCityAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(city), Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                model.addAttribute("city", city);

                model.addAttribute("cityb", city);

            } else if (cityb != null && !cityb.isEmpty()) {
                ListandCount list = orderService.findByCityAndStatusOrderByCreatedDesc(paget, orderService.getonRusforDb(cityb), Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
                model.addAttribute("cityb", cityb);

                model.addAttribute("city", cityb);
            } else {
                ListandCount list = orderService.findByStatusOrderByCreatedDesc(paget, Status.ACTIVE);
                model.addAttribute("orders", list.getListorderOutForm());
                model.addAttribute("paginationData", new PaginationDate(page, list.getCount()));
            }


        }
        return "orders";
    }




    @GetMapping("/myorders")
    public String showPageMyOrders (@AuthenticationPrincipal User user,
                                    Model model,
                                    @RequestParam(defaultValue ="1") int page) {
        int paget = page;
        if (page<1)
        {
            paget=1;
        }

        ListandCount list = orderService.findByUserOrderByCreatedDesc(user,paget);

        model.addAttribute("orders", list.getListorderOutForm());
        model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        return "myorders";
    }






    @GetMapping("/order/{id}")
    public String showPageById (@PathVariable("id") String id,
                                @RequestParam(required = false, defaultValue = "") String category,
                                @RequestParam(required = false, defaultValue = "") String subcategory,
                                Model model) throws Exception {
        Long longid = 0l;
        try {
             longid = Long.parseLong(id);
        }
        catch (NumberFormatException e)
        {
            return "Что то пошло не так.... Попробуйте еще раз или обратитесь в Службу Поддеркжи";
        }

        if (longid != 0l) {
         Order order = orderService.findById(longid).orElseThrow(Exception::new);
            model.addAttribute("order", order);
        Set<String> distinctcategory = new HashSet<>();

            for (int i = 0; i <order.getFilters().size() ; i++) {
                distinctcategory.add(order.getFilters().get(i).getCategory());
            }
            model.addAttribute("setcategory", distinctcategory);


            model.addAttribute("cat", category);
            model.addAttribute("subcat", subcategory);

            // model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        }
        return "order";
    }

   /* @GetMapping("/order/{city}")
    public String showPageByCity (@PathVariable("city") String city, Model model) throws Exception {



          //  Order order = orderService.findById(city).orElseThrow(Exception::new);
           // model.addAttribute("order", order);
            // model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));

        return "ordercity";
    }
*/
   /* @PostMapping("/order/{city}")
    public String showPageByCityPost (@PathVariable("city") String city,
                                      Model model,
                                      @RequestParam(required = false, defaultValue = "") String city2,
                                      @RequestParam(defaultValue ="1") int page)  {
        int paget = page;
        if (page<1)
        {
            paget=1;
        }


        if (city != null && !city.isEmpty()) {
            // messages = messageRepo.findByTag(filter);
            ListandCount list = orderService.findAllByCityOrderByCreatedDesc(paget,city);
            model.addAttribute("orders", list.getListorderOutForm());
            model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        } else {
            ListandCount list = orderService.findAllByOrderByCreatedDesc(paget);
            model.addAttribute("orders", list.getListorderOutForm());
            model.addAttribute("paginationData",new PaginationDate(page,list.getCount()));
        }
        return "ordercity";
    }
*/
}
