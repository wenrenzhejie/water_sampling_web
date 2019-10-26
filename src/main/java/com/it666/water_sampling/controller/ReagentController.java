package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.Reagent;
import com.it666.water_sampling.service.ReagentService;
import com.it666.water_sampling.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reagent")
public class ReagentController {
    @Autowired
    private ReagentService reagentService;
    @Autowired
    private TaskService taskService;
    @GetMapping("/getAllReagent")
    @ResponseBody
    public Msg getAllReagent(){
        List<Reagent> reagentList = reagentService.getAllReagent();
        return Msg.success().add("reagentList",reagentList);
    }

    @PostMapping("/addReagent")
    @ResponseBody
    public Msg addReagent(Reagent reagent){
        reagentService.addReagent(reagent);
        return Msg.success();
    }

    @GetMapping("/getReagentById")
    @ResponseBody
    public Msg getReagentById(Integer id){
        Reagent reagent = reagentService.getReagentById(id);
        return Msg.success().add("reagent",reagent);
    }

    @PostMapping("/modifyReagent")
    @ResponseBody
    public Msg modifyReagent(Reagent reagent){
        System.out.println("aaaaaaaaaaaaaaaaaaaaa");
        reagentService.modifyReagent(reagent);
        return Msg.success();
    }

    @DeleteMapping("/deleteReagentById/{id}")
    @ResponseBody
    public Msg deleteReagentById(@PathVariable Integer id){
        reagentService.deleteReagentById(id);
        taskService.deleteTaskByReagentId(id);
        return Msg.success();
    }
}
