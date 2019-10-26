package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.Task;
import com.it666.water_sampling.bean.User;
import com.it666.water_sampling.dao.TaskMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.*;

@Service
public class TaskService {
    @Autowired
    private TaskMapper taskMapper;
    public List<Task> getAllTasksByUserId(String userId) {
        return taskMapper.getAllTasksByUserId(userId);
    }

    public List<Task> getCurrentTasksByUserIdAndLocation(String userId) {
        return taskMapper.getCurrentTasksByUserIdAndLocation(userId);
    }

    public List<Task> getAllUnSelectedTasks() {
        return taskMapper.getAllUnSelectedTasks();
    }

    public void saveSelectedTasks(String userId,List<Integer> list) {
        System.out.println("task Service");
        taskMapper.saveSelectedTasks(userId,list);
    }

    public void saveScanBottle(String id,String bottleId, Timestamp date1) {
        taskMapper.saveScanBottle(id,bottleId,date1);
    }

    public List<Task> getAllUnFinishedTasksTools(String userId) {
        return taskMapper.getAllUnFinishedTasksTools(userId);
    }

    public List<Task> adminGetAllTasksByUserId(String userId) {
        return taskMapper.adminGetAllTasksByUserId(userId);
    }

    public List<Task> getAllTasks() {
        List<Task> taskList = taskMapper.getAllTasks();
        Map<String,String> map = new HashMap<String,String>();
        List<String> list = new ArrayList<String>();
        for (Task task:taskList){
            if (task.getUser() == null){
                User user = new User();
                user.setUserName("待定");
                task.setUser(user);
            }else {
                if (!map.containsKey(task.getUser().getUserId())){
                    map.put(task.getUser().getUserId(),"待定");
                    list.add(task.getUser().getUserId());
                }
            }
        }
        //发送请求得到所有人名
        if (list.size() != 0){
            List<User> userList = getUserNameByUserIds(list);
            for (User user:userList){
                map.put(user.getUserId(),user.getUserName());
            }
        }

        for (Task task:taskList){
            String userId = task.getUser().getUserId();
            if ( userId!= null){
                task.getUser().setUserName(map.get(userId));
            }
        }
        return taskList;
    }

    public List<User> getUserNameByUserIds(List<String> ids){
        return taskMapper.getUserNameByUserIds(ids);
    }

    public void addTask(Task task) {
        taskMapper.addTask(task);
    }

    public Task getTaskById(Integer id) {
        return taskMapper.getTaskById(id);
    }

    public void deleteTaskByUserId(String userId) {
        taskMapper.deleteTaskByUserId(userId);
    }

    public void deleteTaskByBottleTypeId(Integer id) {
        taskMapper.deleteTaskByBottleTypeId(id);
    }

    public void deleteTaskByReagentId(Integer id) {
        taskMapper.deleteTaskByReagentId(id);
    }

    public void deleteTaskByPlaceId(Integer id) {
        taskMapper.deleteTaskByPlaceId(id);
    }

    public void ModifyTask(Task task) {
        taskMapper.ModifyTask(task);
    }

    public void deleteTaskById(Integer id) {
        taskMapper.deleteTaskById(id);
    }
}
