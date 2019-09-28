package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public User loginByName(@Param("username") String username, @Param("password") String password);
    public User loginByQrcode(String userId);
}