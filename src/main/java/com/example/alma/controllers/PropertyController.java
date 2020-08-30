/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.controllers;

import com.example.alma.models.Property;
import com.example.alma.services.PropertyServiceInterface;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author alex
 */
@Controller
public class PropertyController {
   
    @Autowired
    PropertyServiceInterface propertyServiceInterface;   
    
    @GetMapping("/getProperties")
    public String showProperties(ModelMap mm) {

        List<Property> result = propertyServiceInterface.getProperties();
        mm.addAttribute("resultProperties", result);

        return "properties";
    }    
    
}
