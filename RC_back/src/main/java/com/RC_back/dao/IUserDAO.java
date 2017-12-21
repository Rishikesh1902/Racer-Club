package com.RC_back.dao;

import java.util.List;

import com.RC_back.model.Address;
import com.RC_back.model.Cart;
import com.RC_back.model.User;

public interface IUserDAO 
{
public List<User> getAllUsers();
public User getUser(int id);
public boolean updateUser(User u);
public boolean deleteUser(int id);
public boolean addUser(User u);
public boolean addUserAddress(Address address);
public boolean addUserCart(Cart cart);

public User getUserByUserName(String userName);

}