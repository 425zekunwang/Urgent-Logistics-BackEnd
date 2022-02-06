package com.example.urgentlogistics.pojo.SparepParts;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("sparepartsinfo")
public class Spare {
    private Integer orderId;
    private String product_name;
    private float restMoney;
    private String general;
    private String advanceDate;
    private String demandlevel;
}
