package com.niit.shoppingcart.dao;

import java.util.List;




import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			
	}

	@Transactional
	public String delete(String id) {
		Supplier supplier = new Supplier();
		supplier.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(supplier);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();
			
		}
		return null;
	}

	@Transactional
	public Supplier get(String id) {
		String hql = "from Supplier where id=" + "'"+ id +"'";
		//  from supplier where id = '101'
		Query query =  sessionFactory.getCurrentSession().createQuery(hql);
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}
	
	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSupplier;
	}
	
	@Transactional
	public Supplier getByName(String name) {
		String hql = "from Supplier where name=" + "'"+ name+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}


}
