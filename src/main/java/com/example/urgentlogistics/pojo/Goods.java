package com.example.urgentlogistics.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("Goods")
public class Goods extends Prototype{
    private String  name;
    private String  SerialNumber;
    private String kind;
    private String specifications;
}
