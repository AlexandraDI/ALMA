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
    private MultipartFile filenameTypical2;
    private MultipartFile filenameTypical3;
    private MultipartFile filenameTypical4;
    private MultipartFile filenameTypical5;

    public MediaDTO(MultipartFile filenameTypical1, MultipartFile filenameTypical2, MultipartFile filenameTypical3, MultipartFile filenameTypical4, MultipartFile filenameTypical5) {
        this.filenameTypical1 = filenameTypical1;
        this.filenameTypical2 = filenameTypical2;
        this.filenameTypical3 = filenameTypical3;
        this.filenameTypical4 = filenameTypical4;
        this.filenameTypical5 = filenameTypical5;
    }

    public MediaDTO() {
    }

    public MultipartFile getFilenameTypical1() {
        return filenameTypical1;
    }

    public void setFilenameTypical1(MultipartFile filenameTypical1) {
        this.filenameTypical1 = filenameTypical1;
    }

    public MultipartFile getFilenameTypical2() {
        return filenameTypical2;
    }

    public void setFilenameTypical2(MultipartFile filenameTypical2) {
        this.filenameTypical2 = filenameTypical2;
    }

    public MultipartFile getFilenameTypical3() {
        return filenameTypical3;
    }

    public void setFilenameTypical3(MultipartFile filenameTypical3) {
        this.filenameTypical3 = filenameTypical3;
    }

    public MultipartFile getFilenameTypical4() {
        return filenameTypical4;
    }

    public void setFilenameTypical4(MultipartFile filenameTypical4) {
        this.filenameTypical4 = filenameTypical4;
    }

    public MultipartFile getFilenameTypical5() {
        return filenameTypical5;
    }

    public void setFilenameTypical5(MultipartFile filenameTypical5) {
        this.filenameTypical5 = filenameTypical5;
    }


    


   
}



