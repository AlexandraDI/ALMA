/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.Property;
import com.example.alma.repositories.PropertyRepository;
import com.example.alma.repositories.PropertyRepositoryPaging;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 *
 * @author alex
 */
@Service
public class PropertyServiceImpl implements PropertyServiceInterface {
    
    @Autowired
    PropertyRepository propertyRepository;
    
    
    @Autowired
    PropertyRepositoryPaging propertyRepositoryPaging;    
    
    @Override
    public int saveProperty(Property p) {
        propertyRepository.save(p);
      return p.getPropertyId();         
    } 
    
    
    @Override
    public List<Property> getProperties() {
        return propertyRepository.findAll();
    } 

// THIS WAS ABSOLUTELY WORKING    
//    @Override
//    public Page<Property> getPages(Pageable pageable) {
//
//    pageable = PageRequest.of(0, 9);
//    Page<Property> page = propertyRepository.findAll(pageable);        
//       return page;
//    } 

    @Override
    public Page<Property> getPages(Pageable pageable) {

    //pageable = PageRequest.of(0, 9);
    //Page<Property> page = propertyRepository.findAll(pageable);        
       return propertyRepositoryPaging.findAll(pageable);
    }
    
    
    @Override
    public Property findProperty(int id) {
        return propertyRepository.getOne(id);
    }

    @Override
    public boolean deleteProperty(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }    
    
}
