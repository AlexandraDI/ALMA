/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.dto;

import com.example.alma.models.Media;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author alex
 */
public class MediaDTO {
    private MultipartFile filenameTypical1;
    private String bathroom;
    private String bedroom;
    private String kitchen;
    private String outdoor;

    public MediaDTO(MultipartFile livingRoom, String bathroom, String bedroom, String kitchen, String outdoor) {
        this.filenameTypical1 = livingRoom;
        this.bathroom = bathroom;
        this.bedroom = bedroom;
        this.kitchen = kitchen;
        this.outdoor = outdoor;
    }

    public MediaDTO() {
    }

    public MultipartFile getfilenameTypical1() {
        return filenameTypical1;
    }

    public void setfilenameTypical1(MultipartFile filenameTypical1) {
        this.filenameTypical1 = filenameTypical1;
    }

    public String getBathroom() {
        return bathroom;
    }

    public void setBathroom(String bathroom) {
        this.bathroom = bathroom;
    }

    public String getBedroom() {
        return bedroom;
    }

    public void setBedroom(String bedroom) {
        this.bedroom = bedroom;
    }

    public String getKitchen() {
        return kitchen;
    }

    public void setKitchen(String kitchen) {
        this.kitchen = kitchen;
    }

    public String getOutdoor() {
        return outdoor;
    }

    public void setOutdoor(String outdoor) {
        this.outdoor = outdoor;
    }
    


   
}



