package com.RC_back.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2344202584306547544L;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productId;
	@Size(min=1, max=30,message="product name should be between 1 to 30 characters long")
	private String productName;
	@NotBlank(message="product category should not be blank")
	private String productCategory;
	@Size(min=20, max=300,message="product description should be between 20-300 characters long")
	private String productDescription;
	@NotBlank(message="product keyword should not be blank")
	private String productKeyword;
	private String productImage;
	@Range(min=1,max=1000000,message="product price should be between 1-1000000")
	private int productPrice;
	@Range(min=0,max=100,message="product quantity should be between 1-100")
	private int productQuantity;
	@Transient			
	private MultipartFile file;
	public MultipartFile getFile()
	{
	return file;
	}
	public void setFile(MultipartFile file)
	{
	this.file=file;
	}


	public Product() {
		super();
	}

	public Product(int productId, String productName, String productCategory, String productDescription,
			String productKeyword, String productImage, int productPrice, int productQuantity) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productKeyword = productKeyword;
		this.productImage = productImage;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductKeyword() {
		return productKeyword;
	}

	public void setProductKeyword(String productKeyword) {
		this.productKeyword = productKeyword;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

}