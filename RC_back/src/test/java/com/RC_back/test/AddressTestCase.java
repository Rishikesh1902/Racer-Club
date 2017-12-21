package com.RC_back.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.RC_back.dao.IAddressDAO;
import com.RC_back.model.Address;

public class AddressTestCase {
	private static AnnotationConfigApplicationContext context;
	private static IAddressDAO addressDAO;
	private Address address;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.RC_back");
		context.refresh();
		addressDAO=(IAddressDAO)context.getBean("addressDAO");
	}
//	@Test
//	public void testAddAddress()
//	{
//		address=new Address();
//		address.setAddAddress1("98-Y");
//		address.setAddAddress2("Preet Vihar");
//		address.setAddCity("Delhi");
//		address.setAddCountry("India");
//		address.setAddState("Delhi");
//		address.setAddZipCode("110010");
//		//address.setUserId(1);
//		
//		assertEquals("Successfully added a address inside the table .",true,addressDAO.addAddress(address));
//	}
	
//	@Test
//	public void testUpdateAddress()
//	{
//		address=new Address();
//		address.setAddAddress1("98-Y");
//		address.setAddAddress2("Preet Vihar");
//		address.setAddCity("New Delhi");
//		address.setAddCountry("India");
//		address.setAddState("Delhi");
//		address.setAddZipCode("110002");
//		address.setUserId(1);
//		
//		assertEquals("Successfully added a address inside the table .",true,addressDAO.updateAddress(address));
//	}
//	
//	@Test
//	public void testGetAddress()
//	{
//		address=addressDAO.getAddress(1);
//		assertEquals("Retrieving data based on id from table","Preet Vihar",address.getAddAddress2());
//	}
//	
//	@Test
//	public void testDeleteAddress()
//	{
//		assertEquals("Deleting address based on id from table",true,addressDAO.deleteAddress(1));
//	}


}
