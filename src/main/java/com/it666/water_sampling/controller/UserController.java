package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
        System.out.println("usersssssssssssssss"+user);
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
        System.out.println(userId);
        User user = userService.loginByQrcode(userId);
        System.out.println(user);
        Msg msg = null;
        if (user != null){
            msg = Msg.success().add("user",user);
        }else {
            msg = Msg.fail();
        }
        return msg;
    }
}
