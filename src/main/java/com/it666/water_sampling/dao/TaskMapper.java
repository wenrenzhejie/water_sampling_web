package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.Task;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public interface TaskMapper {
    public List<Task> getAllTasksByUserId(String userId);

    public List<Task> getCurrentTasksByUserIdAndLocation(String userId);

    public List<Task> getAllUnSelectedTasks();

    public void saveSelectedTasks(@Param("userId") String userId,@Param("list") List<Integer> list);

    public void saveScanBottle(@Param("id") String id, @Param("bottleId") String bottleId, @Param("date") Timestamp date1);

    public List<Task> getAllUnFinishedTasksTools(String userId);

    List<Task> adminGetAllTasksByUserId(String userId);
}