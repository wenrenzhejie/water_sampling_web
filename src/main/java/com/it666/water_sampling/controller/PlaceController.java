package com.it666.water_sampling.controller;

import com.it666.water_sampling.bean.Msg;
import com.it666.water_sampling.bean.Place;
import com.it666.water_sampling.service.PlaceService;
import com.it666.water_sampling.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/place")
@RestController
public class PlaceController {

    @Autowired
    private PlaceService placeService;
    @Autowired
    private TaskService taskService;
    @GetMapping("/getAllPlaces")
    public Msg getAllPlaces(){
        List<Place> placeList = placeService.getAllPlaces();
        return Msg.success().add("placeList",placeList);
    }

    @PostMapping("/addPlace")
    public Msg addPlace(Place place){
        placeService.addPlace(place);
        return Msg.success();
    }

    @GetMapping("/getPlaceById")
    public Msg getPlaceById(Integer id){
        Place place = placeService.getPlaceById(id);
        return Msg.success().add("place",place);
    }

    @PostMapping("/modifyPlace")
    public Msg modifyPlace(Place place){
        placeService.modifyPlace(place);
        return Msg.success();
    }

    @GetMapping("/deletePlaceById")
    public Msg deletePlaceById(Integer id){
        placeService.deletePlaceById(id);
        taskService.deleteTaskByPlaceId(id);
        return Msg.success();
    }
}
