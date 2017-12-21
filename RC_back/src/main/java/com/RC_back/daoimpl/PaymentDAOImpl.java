package com.RC_back.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.RC_back.dao.IPaymentDAO;
import com.RC_back.model.Payment;
import com.RC_back.model.User;

@Repository("paymentDAO")
@Transactional
public class PaymentDAOImpl implements IPaymentDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Payment getPaymentDetails(User u) {
		return (Payment)sessionFactory.getCurrentSession().createQuery("from Payment where user=:u").setParameter("user",u).getSingleResult();
	}

	@Override
	public boolean addPayment(Payment p) {
		try {
			sessionFactory.getCurrentSession().save(p);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	

}
