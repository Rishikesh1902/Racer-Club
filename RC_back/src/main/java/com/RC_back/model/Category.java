package com.RC_back.model;

import java.io.Serializable;

public class Category implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6394546239401646694L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	private int categoryId;
	private String categoryName;
	private boolean active = true;

	public Category() {
		super();
	}

	public Category(int categoryId, String categoryName, boolean active) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.active = active;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
}