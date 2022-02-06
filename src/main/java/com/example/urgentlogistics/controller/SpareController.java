package com.example.urgentlogistics.controller;

import com.example.urgentlogistics.mappers.SpareMapper;
import com.example.urgentlogistics.pojo.SparepParts.Spare;
import com.example.urgentlogistics.services.SpareParts.SpareInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("spare")
@RestController
public class SpareController {
    @Autowired
    private SpareInfoService spareInfoServicer;
    @GetMapping("all")
public R get_spare_info(){
        return new R(true,spareInfoServicer.list());
    }
}
