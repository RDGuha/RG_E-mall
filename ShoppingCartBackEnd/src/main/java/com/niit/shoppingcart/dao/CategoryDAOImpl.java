package com.niit.shoppingcart.dao;

import java.util.List;




import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	@Transactional
	public void saveOrUpdate(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
			
	}

	@Transactional
	public void delete(String id) {
		Category category = new Category();
		category.setId(id);
		sessionFactory.getCurrentSession().delete(category);
	}

	@Transactional
	public Category get(String id) {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Category where id = ?");
        query.setString(0, id);


        return (Category) query.uniqueResult();
		/*String hql = "from Category where id=?";
		
		//  from category where id = '101'
		javax.persistence.Query query =  sessionFactory.getCurrentSession().createQuery(hql);
		List<Category> listCategory = (List<Category>) ((Criteria) query).list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;*/
	}
	
	@Transactional
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}
	
	@Transactional
	public Category getByName(String name) {
		String hql = "from Category where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}


}
