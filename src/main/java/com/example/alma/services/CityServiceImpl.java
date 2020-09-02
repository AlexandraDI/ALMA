/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.City;
import com.example.alma.repositories.CityRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author gianalex
 */

@Service
public class CityServiceImpl implements CityServiceInterface {
    
    @Autowired
    CityRepository cityRepository;
    
    @Override
    public boolean saveCity(City c) {
        cityRepository.save(c);
      return true;         
    }    
    
    @Override
    public List<City> getCities() {
        return cityRepository.findAll();
    }    

    @Override
    public boolean deleteCity(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    
    
}
