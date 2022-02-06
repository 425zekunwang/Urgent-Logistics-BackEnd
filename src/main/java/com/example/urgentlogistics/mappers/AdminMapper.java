package com.example.urgentlogistics.mappers;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.urgentlogistics.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface AdminMapper extends BaseMapper<Admin> {
    Integer SelectByUserAndPassword(@Param("username") String username,
                                        @Param("password") String password);
}
