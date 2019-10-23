package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.bean.admin.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {
    Admin findAdminByUserNameAndPassword(@Param("username") String username, @Param("password") String password);

    void saveAdmin(Admin admin);

    Admin findAdminByUserName(String username);

    List<User> getAllEmployees();

    void saveEmployee(User user);
}
