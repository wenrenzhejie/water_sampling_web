package com.it666.water_sampling.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.Task;
import com.it666.water_sampling.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;
import java.util.*;

@RequestMapping("/task")
@Controller
public class TaskController {
    @Autowired
    private TaskService taskService;
    @ResponseBody
    @GetMapping("/getAllTasksByUserId")
    public List<String> getAllTasksByUserId(String userId){
        List<Task> taskList = taskService.getAllTasksByUserId(userId);
        System.out.println("userId"+userId);
        List<String> stringList = new ArrayList<>();
        for (Task task:taskList){
            if (task.getFinished().equals("1")){
                stringList.add(task.getPlace().getPlaceName()+"   (已完成)   ");
            }else {
                System.out.println("Jin");
                stringList.add(task.getPlace().getPlaceName());
            }

        }
        System.out.println(stringList.toString()+"aaaaaaaaaaaaaaaaaaaaaaaaaaa");
        return stringList;
    }
    @ResponseBody
    @GetMapping("/getCurrentTasksByUserIdAndLocation")
    public List<Map<String,String>> getCurrentTasksByUserIdAndLocation(String userId, double latitude, double longitude){
        System.out.println(latitude+":"+longitude+":"+userId);
        List<Task> taskList = taskService.getCurrentTasksByUserIdAndLocation(userId);
        System.out.println(taskList.size());
        List<Map<String,String>> mapList = new ArrayList<Map<String,String>>();
        for (Task task:taskList){
                double minLatitude = Math.min(task.getPlace().getLatitudeOne(),task.getPlace().getLatitudeTwo());
                System.out.println("minLatitude:"+minLatitude);
                double maxLatitude = Math.max(task.getPlace().getLatitudeOne(),task.getPlace().getLatitudeTwo());
                System.out.println("maxLatitude:"+maxLatitude);

                double minLongitude = Math.min(task.getPlace().getLongitudeOne(),task.getPlace().getLongitudeTwo());
                System.out.println("minLongitude:"+minLongitude);
                double maxLongitude = Math.max(task.getPlace().getLongitudeOne(),task.getPlace().getLongitudeTwo());
                System.out.println("maxLatitude:"+maxLongitude);
//            在经纬度范围内才显示
                if (latitude >= minLatitude && latitude <= maxLatitude && longitude >= minLongitude && longitude <= maxLongitude){
                    System.out.println("进来了");
                    Map<String,String> map = new HashMap<>();
                    map.put("id",String.valueOf(task.getId()));
                    map.put("bottleType",task.getBottleType().getBottleTypeName());
                    map.put("reagent",task.getReagent().getReagentName());
                    map.put("placeName",task.getPlace().getPlaceName());
                    mapList.add(map);
                }
        }
        System.out.println(mapList.size());
        return mapList;
    }

    @ResponseBody
    @GetMapping("/getAllUnSelectedTasks")
    public List<Map<String,String>> getAllUnSelectedTasks(){
        List<Task> taskList = taskService.getAllUnSelectedTasks();
        List<Map<String,String>> mapList = new ArrayList<Map<String,String>>();
        for (Task task:taskList){
                Map<String,String> map = new HashMap<>();
                map.put("id",String.valueOf(task.getId()));
                map.put("bottleType",task.getBottleType().getBottleTypeName());
                map.put("reagent",task.getReagent().getReagentName());
                map.put("placeName",task.getPlace().getPlaceName());
                mapList.add(map);
        }
        return mapList;
    }

    @ResponseBody
    @PostMapping("/saveSelectedTasks")
    public Msg saveSelectedTasks(String userId,String ids){
        System.out.println(ids);
        System.out.println(userId);
        List<Integer> list = JSON.parseObject(ids, new TypeReference<List<Integer>>() {
        });
//        System.out.println(list.toString());
        taskService.saveSelectedTasks(userId,list);
        return Msg.success();
    }

    @ResponseBody
    @PostMapping("/saveScanBottle")
    public Msg saveScanBottle(String id,String bottleId){
        System.out.println("taskId:"+id);
        System.out.println("bottleId:"+bottleId);
        Date date = new Date();
        Timestamp date1 = new Timestamp(date.getTime());
        System.out.println(date1.toString());
        taskService.saveScanBottle(id,bottleId,date1);
        return Msg.success();
    }

    @ResponseBody
    @GetMapping("/getAllTools")
    public Msg getAllTools(String userId){
        List<Task> taskList = taskService.getAllUnFinishedTasksTools(userId);
        Map<String,Integer> bottleTypeMap = new HashMap<>();
        Map<String,Integer> reagentTypeMap = new HashMap<>();
        for (Task task:taskList){
            Integer bottleTypeNum = bottleTypeMap.getOrDefault(task.getBottleType().getBottleTypeName(), 0);
            bottleTypeMap.put(task.getBottleType().getBottleTypeName(),bottleTypeNum+1);
        }
        for (Task task:taskList){
            Integer reagentNum = reagentTypeMap.getOrDefault(task.getReagent().getReagentName(), 0);
            reagentTypeMap.put(task.getReagent().getReagentName(),reagentNum+1);
        }
        Msg msg = Msg.success().add("totalBottles", taskList.size()).add("bottleTypeMap", bottleTypeMap).add("reagentTypeMap", reagentTypeMap);
        System.out.println(msg.toString());
        return msg;
    }

    @GetMapping("/adminGetAllTasksByUserId")
    @ResponseBody
    public Msg adminGetAllTasksByUserId(String userId){
        List<Task> taskList = taskService.adminGetAllTasksByUserId(userId);
        return Msg.success().add("taskList",taskList);
    }
}
