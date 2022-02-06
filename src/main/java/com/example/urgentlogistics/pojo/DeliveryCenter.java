package com.example.urgentlogistics.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("deliverycenter")
public class DeliveryCenter {
    private String SerialNumber;
    private String tel;
    private String manage;
    private String center;
}
