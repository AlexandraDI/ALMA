/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.Features;
import java.util.List;

/**
 *
 * @author gianalex
 */
public interface FeaturesServiceInterface {
    public boolean saveFeatures(Features f);    
    
    public List<Features> getFeaturesList();    

    public boolean deleteFeatures(int id);     
}