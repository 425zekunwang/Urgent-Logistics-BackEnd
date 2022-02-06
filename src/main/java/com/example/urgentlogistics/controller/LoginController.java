package com.example.urgentlogistics.controller;

import com.example.urgentlogistics.pojo.User;
import com.example.urgentlogistics.services.iflogin.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
@CrossOrigin(allowCredentials="true")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @PostMapping("login")
    public R ifLogin(@RequestBody User user)
    {
        return new R(loginService.login(user.getName(),user.getPwd()));
    }
//    public Boolean ifLogin(@RequestParam("name")String admin,
//                           @RequestParam("pwd")String password)
//    {
//
//        return loginService.login(admin,password);
//    }

}
