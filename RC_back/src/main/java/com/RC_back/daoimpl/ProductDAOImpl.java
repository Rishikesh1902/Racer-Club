package com.RC_back.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.RC_back.dao.IProductDAO;
import com.RC_back.model.Product;

@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements IProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Product> getProducts() {
		return sessionFactory.getCurrentSession().createQuery("FROM Product", Product.class).getResultList();
	}

	public boolean addProducts(Product p) {
		try {
			sessionFactory.getCurrentSession().persist(p);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public Product getProduct(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(id));
	}

	public boolean updateProduct(Product p) {
		try {
			sessionFactory.getCurrentSession().update(p);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public boolean deleteProduct(int id) {
		try {
			sessionFactory.getCurrentSession().delete(getProduct(id));
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
