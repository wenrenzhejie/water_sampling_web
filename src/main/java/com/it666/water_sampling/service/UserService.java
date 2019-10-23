package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.bean.UserExample;
import com.it666.water_sampling.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;
    public User loginByName(String username, String password) {
        User user = userMapper.loginByName(username, password);
        return user;
    }

    public User loginByQrcode(String userId) {
        User user = userMapper.loginByQrcode(userId);
        return user;
    }

    public void updateUserById(User user) {
        userMapper.updateUserById(user);
    }

    public void deleteEmployeeById(String userId) {
        userMapper.deleteEmployeeById(userId);
    }
}
