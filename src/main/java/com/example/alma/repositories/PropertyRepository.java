/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.repositories;

import com.example.alma.models.Property;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author alex
 */

@Repository
public interface PropertyRepository extends JpaRepository<Property, Integer>{

    @Query("SELECT  p FROM Property p WHERE " +
            " p.price <=:maxPrice AND p.price >=:minPrice AND p.rooms <=:minRooms")
    List<Property> findProperties(
                                  @Param("maxPrice") double maxPrice,@Param("minPrice") double minPrice,
                                  @Param("minRooms") int minRooms);   
    
    public Property findByPropertyId(int propertyId);
    
    public List<Property> findTop6ByOrderByDatetimeUploadedDesc();
    
    public List<Property> findTop2ByOrderByDatetimeUploadedDesc();
    
    
    public List<Property> findTop4ByOrderByPriceDesc();
}

