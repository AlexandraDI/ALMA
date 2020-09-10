/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author alex
 */
@Entity
@Table(name = "features")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Features.findAll", query = "SELECT f FROM Features f"),
    @NamedQuery(name = "Features.findByFeaturesId", query = "SELECT f FROM Features f WHERE f.featuresId = :featuresId"),
    @NamedQuery(name = "Features.findByAirconditioning", query = "SELECT f FROM Features f WHERE f.airconditioning = :airconditioning"),
    @NamedQuery(name = "Features.findByWasher", query = "SELECT f FROM Features f WHERE f.washer = :washer"),
    @NamedQuery(name = "Features.findBySauna", query = "SELECT f FROM Features f WHERE f.sauna = :sauna"),
    @NamedQuery(name = "Features.findByWindowcoverings", query = "SELECT f FROM Features f WHERE f.windowcoverings = :windowcoverings"),
    @NamedQuery(name = "Features.findByTvcable", query = "SELECT f FROM Features f WHERE f.tvcable = :tvcable"),
    @NamedQuery(name = "Features.findByLaundry", query = "SELECT f FROM Features f WHERE f.laundry = :laundry"),
    @NamedQuery(name = "Features.findByBarbeque", query = "SELECT f FROM Features f WHERE f.barbeque = :barbeque"),
    @NamedQuery(name = "Features.findByDryer", query = "SELECT f FROM Features f WHERE f.dryer = :dryer"),
    @NamedQuery(name = "Features.findByGym", query = "SELECT f FROM Features f WHERE f.gym = :gym"),
    @NamedQuery(name = "Features.findByTennis", query = "SELECT f FROM Features f WHERE f.tennis = :tennis"),
    @NamedQuery(name = "Features.findByRefrigerator", query = "SELECT f FROM Features f WHERE f.refrigerator = :refrigerator"),
    @NamedQuery(name = "Features.findByLawn", query = "SELECT f FROM Features f WHERE f.lawn = :lawn"),
    @NamedQuery(name = "Features.findBySwimmingpool", query = "SELECT f FROM Features f WHERE f.swimmingpool = :swimmingpool"),
    @NamedQuery(name = "Features.findByOutdoorshower", query = "SELECT f FROM Features f WHERE f.outdoorshower = :outdoorshower"),
    @NamedQuery(name = "Features.findByGolf", query = "SELECT f FROM Features f WHERE f.golf = :golf")})
public class Features implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "features_id")
    private Integer featuresId;
    @Column(name = "airconditioning")
    private Short airconditioning;
    @Column(name = "washer")
    private Short washer;
    @Column(name = "sauna")
    private Short sauna;
    @Column(name = "windowcoverings")
    private Short windowcoverings;
    @Column(name = "tvcable")
    private Short tvcable;
    @Column(name = "laundry")
    private Short laundry;
    @Column(name = "barbeque")
    private Short barbeque;
    @Column(name = "dryer")
    private Short dryer;
    @Column(name = "gym")
    private Short gym;
    @Column(name = "tennis")
    private Short tennis;
    @Column(name = "refrigerator")
    private Short refrigerator;
    @Column(name = "lawn")
    private Short lawn;
    @Column(name = "swimmingpool")
    private Short swimmingpool;
    @Column(name = "outdoorshower")
    private Short outdoorshower;
    @Column(name = "golf")
    private Short golf;
    @JoinColumn(name = "property_id", referencedColumnName = "property_id")
    @ManyToOne(optional = false)
    private Property propertyId;

    public Features() {
    }

    public Features(Integer featuresId) {
        this.featuresId = featuresId;
    }

    public Integer getFeaturesId() {
        return featuresId;
    }

    public void setFeaturesId(Integer featuresId) {
        this.featuresId = featuresId;
    }

    public Short getAirconditioning() {
        return airconditioning;
    }

    public void setAirconditioning(Short airconditioning) {
        this.airconditioning = airconditioning;
    }

    public Short getWasher() {
        return washer;
    }

    public void setWasher(Short washer) {
        this.washer = washer;
    }

    public Short getSauna() {
        return sauna;
    }

    public void setSauna(Short sauna) {
        this.sauna = sauna;
    }

    public Short getWindowcoverings() {
        return windowcoverings;
    }

    public void setWindowcoverings(Short windowcoverings) {
        this.windowcoverings = windowcoverings;
    }

    public Short getTvcable() {
        return tvcable;
    }

    public void setTvcable(Short tvcable) {
        this.tvcable = tvcable;
    }

    public Short getLaundry() {
        return laundry;
    }

    public void setLaundry(Short laundry) {
        this.laundry = laundry;
    }

    public Short getBarbeque() {
        return barbeque;
    }

    public void setBarbeque(Short barbeque) {
        this.barbeque = barbeque;
    }

    public Short getDryer() {
        return dryer;
    }

    public void setDryer(Short dryer) {
        this.dryer = dryer;
    }

    public Short getGym() {
        return gym;
    }

    public void setGym(Short gym) {
        this.gym = gym;
    }

    public Short getTennis() {
        return tennis;
    }

    public void setTennis(Short tennis) {
        this.tennis = tennis;
    }

    public Short getRefrigerator() {
        return refrigerator;
    }

    public void setRefrigerator(Short refrigerator) {
        this.refrigerator = refrigerator;
    }

    public Short getLawn() {
        return lawn;
    }

    public void setLawn(Short lawn) {
        this.lawn = lawn;
    }

    public Short getSwimmingpool() {
        return swimmingpool;
    }

    public void setSwimmingpool(Short swimmingpool) {
        this.swimmingpool = swimmingpool;
    }

    public Short getOutdoorshower() {
        return outdoorshower;
    }

    public void setOutdoorshower(Short outdoorshower) {
        this.outdoorshower = outdoorshower;
    }

    public Short getGolf() {
        return golf;
    }

    public void setGolf(Short golf) {
        this.golf = golf;
    }

    public Property getPropertyId() {
        return propertyId;
    }

    public void setPropertyId(Property propertyId) {
        this.propertyId = propertyId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (featuresId != null ? featuresId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Features)) {
            return false;
        }
        Features other = (Features) object;
        if ((this.featuresId == null && other.featuresId != null) || (this.featuresId != null && !this.featuresId.equals(other.featuresId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.alma.models.Features[ featuresId=" + featuresId + " ]";
    }
    
}
