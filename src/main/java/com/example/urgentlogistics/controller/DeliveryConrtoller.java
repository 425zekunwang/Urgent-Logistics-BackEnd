package com.example.urgentlogistics.controller;

import com.example.urgentlogistics.mappers.Delivery_infoMapper;
import com.example.urgentlogistics.services.Delivery_InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("delivery")
public class DeliveryConrtoller {
    @Autowired
    private Delivery_InfoService delivery_infoService;
    @GetMapping("all")
    private R get_delivery_info(){
        return new R(true,delivery_infoService.list());
    }
}
