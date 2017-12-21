package com.RC_back.dao;

import java.util.List;

import com.RC_back.model.Address;
import com.RC_back.model.User;

public interface IAddressDAO {
	public List<Address> getAllAddress();

	public Address getAddress(int id);
	
	public Address getAddressByUser(User user);

	public boolean deleteAddress(int id);

	public boolean addAddress(Address a);
	
	public boolean updateAddress(Address a);

}
