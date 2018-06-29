package com.vebinar.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class OrderController {
   // @Autowired
   // public UserService userService;

    @GetMapping("/add")
    public String addorder() {
        return "add";
    }

    @PostMapping ("/add")
    public String addorder(@RequestParam(name ="title",required = false) String title,
                           @RequestParam(name ="details",required = false) String details,
                           @RequestParam(name ="location",required = false) String location,
                           Model model) {
        model.addAttribute("title",title);
        model.addAttribute("details", details);
        model.addAttribute("location", location);

        return "add";
    }

}
