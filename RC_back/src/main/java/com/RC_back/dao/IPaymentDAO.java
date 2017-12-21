package com.RC_back.dao;

import com.RC_back.model.Payment;
import com.RC_back.model.User;

public interface IPaymentDAO {
	 public Payment getPaymentDetails(User u);
	 public boolean addPayment(Payment p);
	}
