package com.it666.water_sampling.bean;

import java.util.List;

public class BottleType {
    private Integer id;

    private String bottleTypeName;

    private List<Bottle> bottleList;

    private List<Reagent> reagentList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBottleTypeName() {
        return bottleTypeName;
    }

    public void setBottleTypeName(String bottleTypeName) {
        this.bottleTypeName = bottleTypeName;
    }

    public List<Bottle> getBottleList() {
        return bottleList;
    }

    public void setBottleList(List<Bottle> bottleList) {
        this.bottleList = bottleList;
    }

    public List<Reagent> getReagentList() {
        return reagentList;
    }

    public void setReagentList(List<Reagent> reagentList) {
        this.reagentList = reagentList;
    }
}