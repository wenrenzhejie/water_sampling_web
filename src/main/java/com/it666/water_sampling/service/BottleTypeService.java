package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.BottleType;
import com.it666.water_sampling.dao.BottleTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BottleTypeService {
    @Autowired
    private BottleTypeMapper bottleTypeMapper;
    public List<BottleType> getAllBottleTypes() {
        return bottleTypeMapper.getAllBottleTypes();
    }

    public BottleType getBottleTypeById(Integer id) {
        return bottleTypeMapper.getBottleTypeById(id);
    }

    public void modifyBottleType(BottleType bottleType) {
        bottleTypeMapper.modifyBottleType(bottleType);
    }

    public void addBottleType(BottleType bottleType) {
        bottleTypeMapper.addBottleType(bottleType);
    }

    public void deleteBottleTypeById(Integer id) {
        bottleTypeMapper.deleteBottleTypeById(id);
    }
}
