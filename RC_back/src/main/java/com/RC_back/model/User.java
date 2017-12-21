package com.RC_back.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Component
public class User implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4597558468489355020L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	@Size(min=1, max=30,message="user name should be between 1 to 30 characters long")
	private String userName;
	@Size(min=1, max=30,message="user full name should be between 1 to 30 characters long")
	private String userFullName;
	public String getUserFullName() {
		return userFullName;
	}
	public void setUserFullName(String userFullName) {
		this.userFullName = userFullName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
    @OneToMany(cascade=CascadeType.ALL, mappedBy="user")
    List<Address> address=new ArrayList<>();
    @OneToOne(cascade=CascadeType.ALL,mappedBy = "user", fetch = FetchType.EAGER)
    Cart cart;
	
	
	public List<Address> getAddress() {
		return address;
	}
	public void setAddress(List<Address> address) {
		this.address = address;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	@NotBlank
	private String role;
	@Size(min=1, max=30,message="user password should be between 1 to 30 characters long")
	private String password;
	@Size(min=1, max=30,message="user confirm password should be between 1 to 30 characters long")
	@Transient
	private String userConPassword;
	@Size(min=1, max=50,message="user email should be between 1 to 50 characters long")
	private String userEmail;
	@Size(min=1, max=30,message="user name should be between 1 to 30 characters long")
	private String userMobile;
	@NotBlank
	private String userSecurityQ;
	@Size(min=1, max=30,message="user security answer should be between 1 to 30 characters long")
	private String userSecurityA;
	
	private boolean enabled=true;
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public User(int userId, String userName,String userFullName ,String role, String userPassword, String userConPassword,
		 String userEmail, String userMobile, String userSecurityQ, String userSecurityA) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userFullName = userFullName;
		this.role = role;
		this.password = userPassword;
		this.userConPassword = userConPassword;
		this.userEmail = userEmail;
		this.userMobile = userMobile;
		this.userSecurityQ = userSecurityQ;
		this.userSecurityA = userSecurityA;
		this.enabled=true;
	}
	public User() {
		super();
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserConPassword() {
		return userConPassword;
	}
	public void setUserConPassword(String userConPassword) {
		this.userConPassword = userConPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserSecurityQ() {
		return userSecurityQ;
	}
	public void setUserSecurityQ(String userSecurityQ) {
		this.userSecurityQ = userSecurityQ;
	}
	public String getUserSecurityA() {
		return userSecurityA;
	}
	public void setUserSecurityA(String userSecurityA) {
		this.userSecurityA = userSecurityA;
	}
}