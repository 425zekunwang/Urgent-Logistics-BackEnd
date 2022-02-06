package com.example.urgentlogistics;

import com.example.urgentlogistics.mappers.AdminMapper;
import com.example.urgentlogistics.services.GoodsService;
import com.example.urgentlogistics.services.iflogin.Iflogin;
import com.example.urgentlogistics.services.iflogin.LoginService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class UrgentLogisticsApplicationTests {

    @Autowired
    GoodsService goodsService;
    @Test
    void contextLoads() {
//        System.out.println(adminMapper.SelectByUserAndPassword("root","123"));
        System.out.println(goodsService.list());
            }

}
