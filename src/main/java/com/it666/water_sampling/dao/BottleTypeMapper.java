package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.BottleType;

import java.util.List;

public interface BottleTypeMapper {

    List<BottleType> getAllBottleTypes();

    BottleType getBottleTypeById(Integer id);

    void modifyBottleType(BottleType bottleType);

    void addBottleType(BottleType bottleType);

    void deleteBottleTypeById(Integer id);
}