package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.bean.admin.Admin;
import com.it666.water_sampling.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    private AdminMapper adminMapper;
    public Admin findAdminByUserNameAndPassword(String username, String password) {
        return adminMapper.findAdminByUserNameAndPassword(username,password);
    }

    public void saveAdmin(Admin admin) {
        adminMapper.saveAdmin(admin);
    }

    public Admin findAdminByUserName(String username) {
        return adminMapper.findAdminByUserName(username);
    }

    public List<User> getAllEmployees() {
        return adminMapper.getAllEmployees();
    }

    public void saveEmployee(User user) {
        adminMapper.saveEmployee(user);
    }
}
