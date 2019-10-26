package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.Reagent;
import com.it666.water_sampling.dao.ReagentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReagentService {
    @Autowired
    private ReagentMapper reagentMapper;

    public List<Reagent> getAllReagent() {
        return reagentMapper.reagentList();
    }

    public void addReagent(Reagent reagent) {
        reagentMapper.addReagent(reagent);
    }

    public Reagent getReagentById(Integer id) {
        return reagentMapper.getReagentById(id);
    }

    public void modifyReagent(Reagent reagent) {
        reagentMapper.modifyReagent(reagent);
    }

    public void deleteReagentById(Integer id) {
        reagentMapper.deleteReagentById(id);
    }
}
