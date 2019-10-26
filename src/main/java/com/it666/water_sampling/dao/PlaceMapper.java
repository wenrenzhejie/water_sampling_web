package com.it666.water_sampling.dao;

import com.it666.water_sampling.bean.Place;

import java.util.List;

public interface PlaceMapper {

    List<Place> getAllPlaces();

    void addPlace(Place place);

    Place getPlaceById(Integer id);

    void modifyPlace(Place place);

    void deletePlaceById(Integer id);
}
