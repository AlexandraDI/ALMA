/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.Property;
import java.util.List;

/**
 *
 * @author alex
 */
public interface PropertyServiceInterface {

    public boolean saveProperty(Property p);    
    
    public List<Property> getProperties();    

    public boolean deleteProperty(int id);     
    
    
    
}
