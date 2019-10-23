package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.bean.admin.Admin;
import com.it666.water_sampling.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
//    跳转到登录页面
    @RequestMapping("/adminLogin")
    public String index(){
        return "/login/login";
    };
//    真正实现登录
    @PostMapping("/adminGoLogin")
    public String login(String username, String password, HttpSession session){
        System.out.println(username);
        System.out.println(password);
        Admin admin = adminService.findAdminByUserNameAndPassword(username,password);
        System.out.println(admin);
        session.setAttribute("admin",admin.getUsername());
        return "/background/index";
    }
//    跳转到注册页面
    @PostMapping("/adminRegist")
    public String registIndex(){
        return "/regist/regist";
    }
    @PostMapping("/checkRegistUsername")
    @ResponseBody
    public Msg checkRegistUsername(String username){
        Admin admin = adminService.findAdminByUserName(username);
        if (admin != null){
            return Msg.fail();
        }
        return Msg.success();
    }
//    去注册
    @PostMapping("/adminGoRegist")
    public String adminGoRegist(Admin admin){
        System.out.println(admin);
        adminService.saveAdmin(admin);
        return "/regist/registSuccess";
    }

    //退出登录
    @RequestMapping("/adminQuit")
    public String adminQuit(HttpSession session){
        session.invalidate();
        return "/login/login";
    }

    @RequestMapping
    @ResponseBody
    public Msg getAllEmployees(){
        List<User> userList = adminService.getAllEmployees();
        return Msg.success().add("employees",userList);
    }

    @PostMapping("/saveEmployee")
    @ResponseBody
    public Msg saveEmployee(User user){
        adminService.saveEmployee(user);
        return Msg.success();
    }




}
