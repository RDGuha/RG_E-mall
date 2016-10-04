package com.niit.shoppingcart.dao;

import com.niit.shoppingcart.model.Address;

public interface AddressDAO {
	
public void saveOrUpdate(Address address);
	
	public void delete(int cartId);
	
	public Address get(int cartId);

}
