package com.vebinar.controller;

import com.vebinar.entity.Role;
import com.vebinar.entity.User;
import com.vebinar.service.UserService;
import com.vebinar.service.UserService2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    public UserService userService;

    @GetMapping("/")
    public String index(@AuthenticationPrincipal User user) {
        if ((user!= null) && (user.getRoles().contains(Role.ADMIN))) {

                return "redirect:/mng";
            } else if ((user!= null) && (user.getRoles().contains(Role.USER)))

                return "redirect:/myorders";
        else
            return "hello";
            }




  /*  @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

*/

    @GetMapping("/login")
    public String login() {
System.out.println("GETLOGIN");


        return "login";
    }




    @GetMapping("/users")
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "usersList";
    }

    @GetMapping("/search")
    public String searchUser() {
        return "search";
    }



    /*@PostMapping("/searchUsers")
    public String getUsersbyEmail(@RequestParam("email") String email,Model model) {
        model.addAttribute("users", userService.getByEmail(email));
        return "searchUsers";
    }*/

    //@PostMapping("/orders")
    //public

    @GetMapping("/user/{id}")
    public String getById(@PathVariable("id") long id, Model model) {
        model.addAttribute("user", userService.getById(id));
        return "showUser";
    }

    @GetMapping("/user2/{id}")
    public @ResponseBody User getById2(@PathVariable("id") long id, Model model) {
        model.addAttribute("user", userService.getById(id));
        return userService.getById(id);
    }

    @GetMapping("/addUser")
    public String createUserPage() {
        return "createUser";
    }

    @GetMapping("/registration")
    public String registrationPage() {
        return "registration";
    }


    @PostMapping("/addUser")
    public String addUser(@ModelAttribute("user") User user) throws Exception {
        userService.save(user);
        return "redirect:/users";
    }

  /*  @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("user") User user) {
        userService.update(user);
        return "redirect:/user/" + user.getId();
    }*/

    @GetMapping("/update/{id}")
    public String update(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", userService.getById(id));
        return "editUser";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.delete(id);
        return "redirect:/users";
    }
}

