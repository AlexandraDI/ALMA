/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import com.example.alma.models.User;
import com.example.alma.repositories.UserRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author alex
 */
@Service
public class UserServiceImpl implements UserServiceInterface {
    
    
    @Autowired
    UserRepository userRepository;    

    @Override
    public boolean saveUser(User u) {
        userRepository.save(u);
      return true;  
        
//           if(!trainerRepository.existsByNameAndSurnameAndSubject(t.getName(), t.getSurname(), t.getSubject())){
//                    trainerRepository.save(t);
//                    return true;
//           }
//           else return false;           
    }

    @Override
    public List<User> getUsers() {
        //return userRepository.findAll();
        return userRepository.findAll();
    }

    @Override
    public boolean deleteUser(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public String checkIfUsernameExists(String name){
         User tempdev = userRepository.findByUsername(name);
         //String tempdev = "ok";
        if (tempdev == null) {
            return null;
        }
        return "Username already exists. Please enter a different username.";
    }
    
     @Override
    public String checkIfEmailExists(String email){
         User tempdev = userRepository.findByEmail(email);
         //String tempdev = "ok";
        if (tempdev == null) {
            return null;
        }
        return "Email already exists. Please enter a different email.";
    }   
    
    
}
