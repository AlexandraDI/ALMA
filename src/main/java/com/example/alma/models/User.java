/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alma.models;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author alex
 */
@Entity
@Table(name = "user")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u"),
    @NamedQuery(name = "User.findByUserId", query = "SELECT u FROM User u WHERE u.userId = :userId"),
    @NamedQuery(name = "User.findByFirstname", query = "SELECT u FROM User u WHERE u.firstname = :firstname"),
    @NamedQuery(name = "User.findByLastname", query = "SELECT u FROM User u WHERE u.lastname = :lastname"),
    @NamedQuery(name = "User.findByUsername", query = "SELECT u FROM User u WHERE u.username = :username"),
    @NamedQuery(name = "User.findByPassword", query = "SELECT u FROM User u WHERE u.password = :password"),
    @NamedQuery(name = "User.findByEmail", query = "SELECT u FROM User u WHERE u.email = :email"),
    @NamedQuery(name = "User.findByAvatarUrl", query = "SELECT u FROM User u WHERE u.avatarUrl = :avatarUrl")})
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "user_id")
    private Integer userId;
    @Basic(optional = false)
    @Column(name = "firstname")
    private String firstname;
    @Basic(optional = false)
    @Column(name = "lastname")
    private String lastname;
    @Basic(optional = false)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Column(name = "avatar_url")
    private String avatarUrl;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Collection<Reaction> reactionCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userBoughtTheKey")
    private Collection<DigitalKey> digitalKeyCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "senderId")
    private Collection<Message> messageCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Collection<UserRequestsUserForServices> userRequestsUserForServicesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user1")
    private Collection<UserRequestsUserForServices> userRequestsUserForServicesCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    private Collection<UserServesUser> userServesUserCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user1")
    private Collection<UserServesUser> userServesUserCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    private Collection<Application> applicationCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user1Id")
    private Collection<Chat> chatCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user2Id")
    private Collection<Chat> chatCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ownerId")
    private Collection<Property> propertyCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    private Collection<Comment> commentCollection;
    @JoinColumn(name = "curent_location", referencedColumnName = "location_id")
    @ManyToOne
    private Location curentLocation;
    @JoinColumn(name = "required_documents_uploaded", referencedColumnName = "required_documents_id")
    @ManyToOne
    private RequiredDocuments requiredDocumentsUploaded;
    @JoinColumn(name = "role_id", referencedColumnName = "role_id")
    @ManyToOne(optional = false)
    private Role roleId;

    public User() {
    }

    public User(Integer userId) {
        this.userId = userId;
    }

    public User(Integer userId, String firstname, String lastname, String username, String password, String email) {
        this.userId = userId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    @XmlTransient
    public Collection<Reaction> getReactionCollection() {
        return reactionCollection;
    }

    public void setReactionCollection(Collection<Reaction> reactionCollection) {
        this.reactionCollection = reactionCollection;
    }

    @XmlTransient
    public Collection<DigitalKey> getDigitalKeyCollection() {
        return digitalKeyCollection;
    }

    public void setDigitalKeyCollection(Collection<DigitalKey> digitalKeyCollection) {
        this.digitalKeyCollection = digitalKeyCollection;
    }

    @XmlTransient
    public Collection<Message> getMessageCollection() {
        return messageCollection;
    }

    public void setMessageCollection(Collection<Message> messageCollection) {
        this.messageCollection = messageCollection;
    }

    @XmlTransient
    public Collection<UserRequestsUserForServices> getUserRequestsUserForServicesCollection() {
        return userRequestsUserForServicesCollection;
    }

    public void setUserRequestsUserForServicesCollection(Collection<UserRequestsUserForServices> userRequestsUserForServicesCollection) {
        this.userRequestsUserForServicesCollection = userRequestsUserForServicesCollection;
    }

    @XmlTransient
    public Collection<UserRequestsUserForServices> getUserRequestsUserForServicesCollection1() {
        return userRequestsUserForServicesCollection1;
    }

    public void setUserRequestsUserForServicesCollection1(Collection<UserRequestsUserForServices> userRequestsUserForServicesCollection1) {
        this.userRequestsUserForServicesCollection1 = userRequestsUserForServicesCollection1;
    }

    @XmlTransient
    public Collection<UserServesUser> getUserServesUserCollection() {
        return userServesUserCollection;
    }

    public void setUserServesUserCollection(Collection<UserServesUser> userServesUserCollection) {
        this.userServesUserCollection = userServesUserCollection;
    }

    @XmlTransient
    public Collection<UserServesUser> getUserServesUserCollection1() {
        return userServesUserCollection1;
    }

    public void setUserServesUserCollection1(Collection<UserServesUser> userServesUserCollection1) {
        this.userServesUserCollection1 = userServesUserCollection1;
    }

    @XmlTransient
    public Collection<Application> getApplicationCollection() {
        return applicationCollection;
    }

    public void setApplicationCollection(Collection<Application> applicationCollection) {
        this.applicationCollection = applicationCollection;
    }

    @XmlTransient
    public Collection<Chat> getChatCollection() {
        return chatCollection;
    }

    public void setChatCollection(Collection<Chat> chatCollection) {
        this.chatCollection = chatCollection;
    }

    @XmlTransient
    public Collection<Chat> getChatCollection1() {
        return chatCollection1;
    }

    public void setChatCollection1(Collection<Chat> chatCollection1) {
        this.chatCollection1 = chatCollection1;
    }

    @XmlTransient
    public Collection<Property> getPropertyCollection() {
        return propertyCollection;
    }

    public void setPropertyCollection(Collection<Property> propertyCollection) {
        this.propertyCollection = propertyCollection;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    public Location getCurentLocation() {
        return curentLocation;
    }

    public void setCurentLocation(Location curentLocation) {
        this.curentLocation = curentLocation;
    }

    public RequiredDocuments getRequiredDocumentsUploaded() {
        return requiredDocumentsUploaded;
    }

    public void setRequiredDocumentsUploaded(RequiredDocuments requiredDocumentsUploaded) {
        this.requiredDocumentsUploaded = requiredDocumentsUploaded;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof User)) {
            return false;
        }
        User other = (User) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.alma.models.User[ userId=" + userId + " ]";
    }
    
}
