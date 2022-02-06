package com.example.urgentlogistics.services.logistics;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.urgentlogistics.mappers.LogisticsMapper;
import com.example.urgentlogistics.pojo.logistics.Logistics;
import org.springframework.stereotype.Service;

@Service
public class LogisticsService extends ServiceImpl<LogisticsMapper, Logistics> implements LogisticsItf{
}
