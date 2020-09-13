/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.repositories;

import com.example.alma.models.User;
import com.example.alma.models.UserServesUser;
import com.example.alma.models.UserServesUserPK;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author gianalex
 */

@Repository
public interface UserServesUserRepository extends JpaRepository<UserServesUser, Integer> {
  
    //@NamedQuery(name = "UserServesUser.findByUser1Id", query = "SELECT u FROM UserServesUser u WHERE u.userServesUserPK.user1Id = :user1Id")
   public List<UserServesUser> findByUser1Id(Integer user1Id);
 
  // public List<UserServesUser> findByUser1IdAndApplicationId(Integer user1Id,Integer applicationId);

//    @Query("SELECT  u FROM UserServesUser u WHERE " +
//            " u.price <=:maxPrice AND p.price >=:minPrice AND p.rooms <=:minRooms")
//    List<Property> findProperties(
//                                  @Param("maxPrice") double maxPrice,@Param("minPrice") double minPrice,
//                                  @Param("minRooms") int minRooms); 

   
    
}