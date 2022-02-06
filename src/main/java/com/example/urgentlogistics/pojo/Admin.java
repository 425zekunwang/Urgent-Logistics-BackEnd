package com.example.urgentlogistics.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("admins")
public class Admin extends Prototype{
    public  String admin;
    public  String pwd;
    public int power;
}
