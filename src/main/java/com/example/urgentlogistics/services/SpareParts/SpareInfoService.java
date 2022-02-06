package com.example.urgentlogistics.services.SpareParts;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.urgentlogistics.mappers.SpareMapper;
import com.example.urgentlogistics.pojo.SparepParts.Spare;
import org.springframework.stereotype.Service;

@Service
public class SpareInfoService extends ServiceImpl<SpareMapper, Spare> implements SpareInfoItf{
}
