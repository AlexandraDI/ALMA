/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.repositories;

import com.example.alma.models.User;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author alex
 */

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
  
    
    //boolean existsByNameAndSurnameAndSubject(String name, String surname, String subject);
    
    public User findByUsername(String username);
    
    public User findByEmail(String email);

    
     public List<User> findByRequiredDocumentsUploadedNotNullAndLawyerinfoIdNotNull();
}
