/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.services;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author alex
 */
public interface FileHandlingInterface {

    public String storeFileToDisk(MultipartFile file, String filename);

}