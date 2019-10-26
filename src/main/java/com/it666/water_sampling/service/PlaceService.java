package com.it666.water_sampling.service;

import com.it666.water_sampling.bean.Place;
import com.it666.water_sampling.dao.PlaceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceService {
    @Autowired
    private PlaceMapper placeMapper;
    public List<Place> getAllPlaces() {
        return placeMapper.getAllPlaces();
    }

    public void addPlace(Place place) {
        placeMapper.addPlace(place);
    }

    public Place getPlaceById(Integer id) {
        return placeMapper.getPlaceById(id);
    }

    public void modifyPlace(Place place) {
        placeMapper.modifyPlace(place);
    }

    public void deletePlaceById(Integer id) {
        placeMapper.deletePlaceById(id);
    }
}
