package com.RC_back.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

@Entity		//It is hibernate annotation; javax.persistence; It marks Address class as entity bean, so it must have a 
				//  non-argument that is visible with at least protected scope  
public class Address implements Serializable
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4438570083286268901L;
	
	
	@Id			//It is hibernate annotation; Each entity bean will have a primary key, which you annotate on the class 
					//  with the @Id annotation
	@GeneratedValue(strategy = GenerationType.IDENTITY)		//It is hibernate annotation; @Id annotation will automatically 
								// determine the most appropriate primary key generation strategy to be used but can be 
								// overridden with help of @GeneratedValue annotation
	private int addressId;
	
	// @Size - The annotated element size must be between the specified boundaries (included).
	@Size(min=1, max=30,message="address1 should be between 1 to 30 characters long")
	private String addAddress1;
	
	@Size(min=1, max=30,message="address2 should be between 1 to 30 characters long")
	private String addAddress2;
	
	@Size(min=1, max=30,message="city should be between 1 to 30 characters long")
	private String addCity;
	
	@Size(min=1, max=30,message="state should be between 1 to 30 characters long")
	private String addState;
	
	@Size(min=1, max=6,message="zip code should be between 1 to 6 characters long")
	private String addZipCode;
	
	@Size(min=1, max=30,message="country should be between 1 to 30 characters long")
	private String addCountry;
	
	private boolean shipping;
	
	@ManyToOne(cascade=CascadeType.ALL)
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Address(int addressId, String addAddress1, String addAddress2, String addCity, String addState,
			String addZipCode, String addCountry) {
		super();
		this.addressId = addressId;
		this.addAddress1 = addAddress1;
		this.addAddress2 = addAddress2;
		this.addCity = addCity;
		this.addState = addState;
		this.addZipCode = addZipCode;
		this.addCountry = addCountry;
		this.shipping = false;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getAddAddress1() {
		return addAddress1;
	}
	public void setAddAddress1(String addAddress1) {
		this.addAddress1 = addAddress1;
	}
	public String getAddAddress2() {
		return addAddress2;
	}
	public void setAddAddress2(String addAddress2) {
		this.addAddress2 = addAddress2;
	}
	public String getAddCity() {
		return addCity;
	}
	public void setAddCity(String addCity) {
		this.addCity = addCity;
	}
	public String getAddState() {
		return addState;
	}
	public void setAddState(String addState) {
		this.addState = addState;
	}
	public String getAddZipCode() {
		return addZipCode;
	}
	public void setAddZipCode(String addZipCode) {
		this.addZipCode = addZipCode;
	}
	public String getAddCountry() {
		return addCountry;
	}
	public void setAddCountry(String addCountry) {
		this.addCountry = addCountry;
	}
	public boolean isShipping() {
		return shipping;
	}
	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}