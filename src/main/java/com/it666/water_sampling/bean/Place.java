package com.it666.water_sampling.bean;

import java.util.List;

public class Place {
    private Integer id;

    private String placeName;

    private Double latitudeOne;

    private Double longitudeOne;

    private Double latitudeTwo;

    private Double longitudeTwo;

    private List<Task> taskList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }

    public Double getLatitudeOne() {
        return latitudeOne;
    }

    public void setLatitudeOne(Double latitudeOne) {
        this.latitudeOne = latitudeOne;
    }

    public Double getLongitudeOne() {
        return longitudeOne;
    }

    public void setLongitudeOne(Double longitudeOne) {
        this.longitudeOne = longitudeOne;
    }

    public Double getLatitudeTwo() {
        return latitudeTwo;
    }

    public void setLatitudeTwo(Double latitudeTwo) {
        this.latitudeTwo = latitudeTwo;
    }

    public Double getLongitudeTwo() {
        return longitudeTwo;
    }

    public void setLongitudeTwo(Double longitudeTwo) {
        this.longitudeTwo = longitudeTwo;
    }

    public List<Task> getTaskList() {
        return taskList;
    }

    public void setTaskList(List<Task> taskList) {
        this.taskList = taskList;
    }
}