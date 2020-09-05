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
    private MultipartFile filename1;
    private MultipartFile filename2;
    private MultipartFile filename3;
    private MultipartFile filename4;
    private MultipartFile filename5;
    private MultipartFile filenameTypical1;
    private MultipartFile filenameTypical2;
    private MultipartFile filenameTypical3;
    private MultipartFile filenameTypical4;
    private MultipartFile filenameTypical5;
    private MultipartFile filenameTypical6;

    public MediaDTO() {
    }

    public MediaDTO(MultipartFile filename1, MultipartFile filename2, MultipartFile filename3, MultipartFile filename4, MultipartFile filename5, MultipartFile filenameTypical1, MultipartFile filenameTypical2, MultipartFile filenameTypical3, MultipartFile filenameTypical4, MultipartFile filenameTypical5, MultipartFile filenameTypical6) {
        this.filename1 = filename1;
        this.filename2 = filename2;
        this.filename3 = filename3;
        this.filename4 = filename4;
        this.filename5 = filename5;
        this.filenameTypical1 = filenameTypical1;
        this.filenameTypical2 = filenameTypical2;
        this.filenameTypical3 = filenameTypical3;
        this.filenameTypical4 = filenameTypical4;
        this.filenameTypical5 = filenameTypical5;
        this.filenameTypical6 = filenameTypical6;
    }

    public MultipartFile getFilename1() {
        return filename1;
    }

    public void setFilename1(MultipartFile filename1) {
        this.filename1 = filename1;
    }

    public MultipartFile getFilename2() {
        return filename2;
    }

    public void setFilename2(MultipartFile filename2) {
        this.filename2 = filename2;
    }

    public MultipartFile getFilename3() {
        return filename3;
    }

    public void setFilename3(MultipartFile filename3) {
        this.filename3 = filename3;
    }

    public MultipartFile getFilename4() {
        return filename4;
    }

    public void setFilename4(MultipartFile filename4) {
        this.filename4 = filename4;
    }

    public MultipartFile getFilename5() {
        return filename5;
    }

    public void setFilename5(MultipartFile filename5) {
        this.filename5 = filename5;
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

    public MultipartFile getFilenameTypical6() {
        return filenameTypical6;
    }

    public void setFilenameTypical6(MultipartFile filenameTypical6) {
        this.filenameTypical6 = filenameTypical6;
    }
  


   
}



