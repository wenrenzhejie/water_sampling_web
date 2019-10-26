package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.Reagent;

import java.util.List;

public interface ReagentMapper {

    List<Reagent> reagentList();

    void addReagent(Reagent reagent);

    Reagent getReagentById(Integer id);

    void modifyReagent(Reagent reagent);

    void deleteReagentById(Integer id);
}