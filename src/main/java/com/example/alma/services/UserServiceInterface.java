/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.User;
import java.util.List;

/**
 *
 * @author alex
 */
public interface UserServiceInterface {
    

    public boolean saveUser(User u);
   
   public List<User> getUsers();
   
   public boolean deleteUser(int id);  
   
   public String checkIfUsernameExists(String name);
   
   public String checkIfEmailExists(String email);
    
}
