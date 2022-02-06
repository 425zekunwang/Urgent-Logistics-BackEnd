package com.example.urgentlogistics.mappers;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.urgentlogistics.pojo.Goods;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsMapper extends BaseMapper<Goods> {
}
