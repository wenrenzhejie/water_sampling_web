package com.it666.water_sampling.bean;

import java.util.List;

public class Reagent {
    private Integer id;

    private String reagentName;

    private List<BottleType> bottleTypeList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReagentName() {
        return reagentName;
    }

    public void setReagentName(String reagentName) {
        this.reagentName = reagentName;
    }

    public List<BottleType> getBottleTypeList() {
        return bottleTypeList;
    }

    public void setBottleTypeList(List<BottleType> bottleTypeList) {
        this.bottleTypeList = bottleTypeList;
    }
}