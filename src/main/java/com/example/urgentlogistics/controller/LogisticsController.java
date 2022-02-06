package com.example.urgentlogistics.controller;

import com.example.urgentlogistics.services.logistics.LogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("logistics")
public class LogisticsController {
    @Autowired
    LogisticsService logisticsService;
    @GetMapping("all")
    private R get_logistics_info()
    {
        return new R(true,logisticsService.list());
    }
}
