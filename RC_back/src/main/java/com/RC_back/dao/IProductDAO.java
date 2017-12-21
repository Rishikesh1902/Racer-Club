package com.RC_back.dao;

import java.util.List;

import com.RC_back.model.*;

public interface IProductDAO {
	public List<Product> getProducts();
	public Product getProduct(int id);
	public boolean addProducts(Product p);
	public boolean updateProduct(Product p);
	public boolean deleteProduct(int id);
}