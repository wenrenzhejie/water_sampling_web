package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.Task;
import com.it666.water_sampling.dao.TaskMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

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
}
