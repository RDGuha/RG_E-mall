package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Address;

@Repository("addressDAO")
public class AddressDAOImpl implements AddressDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public AddressDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	@Transactional
	public void saveOrUpdate(Address address) {
		sessionFactory.getCurrentSession().saveOrUpdate(address);
	}

	@Transactional
	public void delete(int cartId) {
		Address addressDetails=new Address();
		addressDetails.setCartId(cartId);
		try {
			sessionFactory.getCurrentSession().delete(addressDetails);
		} 
		catch (Exception e) {
			e.printStackTrace();
			 e.getMessage();
		}
	
	}

	@Transactional
	public Address get(int cartid) {
		String hql = "from Address where cart_id='"+cartid+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Address> listProduct = (List<Address>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}

}
