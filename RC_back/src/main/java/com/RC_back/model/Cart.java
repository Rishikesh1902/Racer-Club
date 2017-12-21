package com.RC_back.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class Cart implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5718248662265116126L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartId;
	private int itemCounts;
	private int grandTotal;
	
    @OneToOne(cascade=CascadeType.PERSIST)
    private User user;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy="cart")
    private List<Cart> cartItem;

    
	public Cart() {
		super();
	}

	public Cart(int cartId, int itemCounts, int grandTotal) {
		super();
		this.cartId = cartId;
		this.itemCounts = itemCounts;
		this.grandTotal = grandTotal;
		
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getItemCounts() {
		return itemCounts;
	}
	public void setItemCounts(int itemCounts) {
		this.itemCounts = itemCounts;
	}
	public int getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(int grandTotal) {
		this.grandTotal = grandTotal;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}