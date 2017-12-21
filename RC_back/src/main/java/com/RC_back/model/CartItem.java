package com.RC_back.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class CartItem implements Serializable  
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1334795950711492376L;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    int cartItemId;
    int quantity;
    double totalPrice;
   
    @ManyToOne(cascade = CascadeType.PERSIST,fetch = FetchType.EAGER)
    Cart cart;
    
    @OneToOne(fetch = FetchType.EAGER)
    Product product;
    public int getCartItemId() {
                   return cartItemId;
    }
    public void setCartItemId(int cartItemId) {
                   this.cartItemId = cartItemId;
    }
    public int getQuantity() {
                   return quantity;
    }
    public void setQuantity(int quantity) {
                   this.quantity = quantity;
    }
    public double getTotalPrice() {
                   return totalPrice;
    }
    public void setTotalPrice(double totalPrice) {
                   this.totalPrice = totalPrice;
    }
    public Cart getCart() {
                   return cart;
    }
    public void setCart(Cart cart) {
                   this.cart = cart;
    }
    public Product getProduct() {
                   return product;
    }
    public void setProduct(Product product) {
                   this.product = product;
    }
}