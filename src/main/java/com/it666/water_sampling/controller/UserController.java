package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @ResponseBody
    @PostMapping("/loginByName")
    public Msg login(String username, String password){
        User user = userService.loginByName(username,password);
        Msg msg = null;
        if (user != null){
            msg = Msg.success().add("user",user);
        }else {
            msg = Msg.fail();
        }
        return msg;
    }
    @ResponseBody
    @PostMapping("/loginByQrcode")
    public Msg loginByQrcode(String userId){
        User user = userService.loginByQrcode(userId);
        Msg msg = null;
        if (user != null){
            msg = Msg.success().add("user",user);
        }else {
            msg = Msg.fail();
        }
        System.out.println(msg.toString());
        return msg;
    }

    @GetMapping("/getEmployeeByUserId")
    @ResponseBody
    public Msg getEmployeeByUserId(String userId){
        User user = userService.loginByQrcode(userId);
        return Msg.success().add("user",user);
    }

    @PostMapping("/updateEmployee")
    @ResponseBody
    public Msg updateEmployee(User user){
        System.out.println(user.getId()+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        userService.updateUserById(user);
        return Msg.success();
    }

    @GetMapping("/deleteEmployeeById")
    @ResponseBody
    public Msg deleteEmployeeById(String userId){
        userService.deleteEmployeeById(userId);
        return Msg.success();
    }
}
