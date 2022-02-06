package com.example.urgentlogistics.services.iflogin;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.urgentlogistics.mappers.AdminMapper;
import com.example.urgentlogistics.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService extends ServiceImpl<AdminMapper,Admin> implements Iflogin{
    @Autowired
    AdminMapper adminMapper;
    public Boolean login(String username,String password){
        return adminMapper.SelectByUserAndPassword(username,password)>0;
    }
}
