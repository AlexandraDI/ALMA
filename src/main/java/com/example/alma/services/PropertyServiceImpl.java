/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.Property;
import com.example.alma.repositories.PropertyRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author alex
 */
@Service
public class PropertyServiceImpl implements PropertyServiceInterface {
    
    @Autowired
    PropertyRepository propertyRepository;
    
    @Override
    public boolean saveProperty(Property p) {
        propertyRepository.save(p);
      return true;         
    }    
    
    @Override
    public List<Property> getProperties() {
        return propertyRepository.findAll();
    }    

    @Override
    public boolean deleteProperty(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    
    
}
