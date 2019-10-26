package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.BottleType;
import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.service.BottleTypeService;
import com.it666.water_sampling.service.TaskService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/bottleType")
public class BottleTypeController {

    @Autowired
    private BottleTypeService bottleTypeService;
    @Autowired
    private TaskService taskService;
    @GetMapping("/getAllBottleTypes")
    @ResponseBody
    public Msg getAllBottleTypes(){
        List<BottleType> bottleTypeList = bottleTypeService.getAllBottleTypes();
        return Msg.success().add("bottleTypeList",bottleTypeList);
    }

    @GetMapping("/getBottleTypeById")
    @ResponseBody
    public Msg getBottleTypeById(Integer id){
        BottleType bottleType = bottleTypeService.getBottleTypeById(id);
        return Msg.success().add("bottleType",bottleType);
    }

    @RequestMapping("/modifyBottleType")
    @ResponseBody
    public Msg modifyBottleType(BottleType bottleType){
        System.out.println("bottleTyep:"+bottleType.getId()+"："+bottleType.getBottleTypeName());
        bottleTypeService.modifyBottleType(bottleType);
        return Msg.success();
    }

    @PostMapping("/addBottleType")
    @ResponseBody
    public Msg addBottleType(BottleType bottleType){
        bottleTypeService.addBottleType(bottleType);
        return Msg.success();
    }

    @GetMapping("/deleteBottleTypeById")
    @ResponseBody
    public Msg deleteBottleTypeById(Integer id){
        bottleTypeService.deleteBottleTypeById(id);
        taskService.deleteTaskByBottleTypeId(id);
        return Msg.success();
    }
}
