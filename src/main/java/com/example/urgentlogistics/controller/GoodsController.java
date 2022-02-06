package com.example.urgentlogistics.controller;

import com.example.urgentlogistics.pojo.Goods;
import com.example.urgentlogistics.services.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;
    @GetMapping("/all")
    private R getinfo()
    {
        return new R(true,goodsService.list());
    }

}
