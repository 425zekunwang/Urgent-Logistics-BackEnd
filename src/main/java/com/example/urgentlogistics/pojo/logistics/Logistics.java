package com.example.urgentlogistics.pojo.logistics;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("logistics")
public class Logistics {
    public String trade_status;
    public Integer orderId;
    public String product_name;
    public String order_customer;
    public String order_customer_id;
    public String to_area;
    public String arrive_time;
    public Integer order_num;

}
