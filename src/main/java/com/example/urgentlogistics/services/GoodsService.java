package com.example.urgentlogistics.services;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.urgentlogistics.mappers.GoodsMapper;
import com.example.urgentlogistics.pojo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService extends ServiceImpl<GoodsMapper, Goods> implements GoodsItf{
}
