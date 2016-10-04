package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.model.Address;

@Component
public class AddressController {
	
	@Autowired
	AddressDAO addressDAO;
	
	public String saveAddress(Address address)
	{
		String status=null;
		try 
		{
			int cart=address.getCartId();
			String house=address.getHouseNo();
			String locality=address.getLocality();
			String city=address.getCity();
			String district=address.getDistrict();
			String state=address.getState();
			String pincode=address.getPincode();
			
			Address address1=new Address();
			address1.setCartId(cart);
			address1.setHouseNo(house);
			address1.setLocality(locality);
			address1.setCity(city);
			address1.setDistrict(district);
			address1.setState(state);
			address1.setPincode(pincode);
			
			addressDAO.saveOrUpdate(address1);
			
			status="success";
		} 
		catch (Exception e) 
		{
			status="failure";
		}
		
		return status;
	}
	

}
