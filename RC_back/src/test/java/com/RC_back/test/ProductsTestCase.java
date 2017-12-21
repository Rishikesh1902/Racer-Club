package com.RC_back.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.RC_back.dao.IProductDAO;
import com.RC_back.model.Product;

//public class ProductsTestCase {
//	private static AnnotationConfigApplicationContext context;
//	private static IProductDAO productDAO;
//	private Product product;
//
//	@BeforeClass
//	public static void init() {
//		context = new AnnotationConfigApplicationContext();
//		context.scan("com.RC_back");
//		context.refresh();
//		productDAO=(IProductDAO)context.getBean("productDAO");
//	}
//	@Test
//	public void testAddProduct()
//	{
//		product=new Product();
//		//product.setProductId(105);
//		product.setProductName("Bugatti Veryon");
//		product.setProductCategory("Sports Car");
//		product.setProductImage("P7.jpg");
//		product.setProductPrice(17000000);
//		product.setProductQuantity(5);
//		product.setProductDescription("It is a mid-engined sports car, designed and developed in Germany by the Volkswagen Group and manufactured in Molsheim, France, by Bugatti Automobiles S.A.S., named after the racing driver Pierre Veyron. ");
//		product.setProductKeyword("7-speed, 8.0L W16 Quad-turbocharged, Sports Car, 432 kmph");
//		
//		assertEquals("Successfully added a product inside the table .",true,productDAO.addProducts(product));
//	}
//	@Test
//	public void testGetProduct()
//	{
//		product=productDAO.getProduct(1);
//		assertEquals("Retrieving data based on id from table","Pillow,Comfortable,Sleep,Travel",product.getProductKeyword());
//	}
//	
//	@Test
//	public void testDeleteProduct()
//	{
//		assertEquals("Deleting product based on id from table",true,productDAO.deleteProduct(20));
//	}
//	
//	@Test
//	public void testUpdateProduct()
//	{
//		product=productDAO.getProductId(105);
//		product.setProductName("Bugatti Veryon-updated");
//		product.setProductCategory("Sports Car");
//		product.setProductImage("P7.jpg");
//		product.setProductPrice(17000000);
//		product.setProductQuantity(5);
//		product.setProductDescription("It is a mid-engined sports car, designed and developed in Germany by the Volkswagen Group and manufactured in Molsheim, France, by Bugatti Automobiles S.A.S., named after the racing driver Pierre Veyron. ");
//		product.setProductKeyword("7-speed,8.0L W16 Quad-turbocharged,Sports Car, 432 kmph");
//		
//		assertEquals("Successfully added a product inside the table .",true,productDAO.addProducts(product));
//	}
//}
