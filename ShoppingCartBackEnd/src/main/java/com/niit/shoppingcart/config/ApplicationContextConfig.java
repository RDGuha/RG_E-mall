package com.niit.shoppingcart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcart.dao.AddressDAO;
import com.niit.shoppingcart.dao.AddressDAOImpl;
import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CartDAOImpl;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.CategoryDAOImpl;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.ProductDAOImpl;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.SupplierDAOImpl;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.dao.UserDAOImpl;
import com.niit.shoppingcart.model.Address;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.User;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;




@Configuration
@ComponentScan("com.niit")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		//System.out.println("h1");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/shoppingcart");

		dataSource.setUsername("sa");
		dataSource.setPassword("");

		/*Properties connectionProperties = new Properties();
		connectionProperties.setProperty("hibernate.hbm2ddl.auto", "create");
		connectionProperties.setProperty("hibernate.show_sql", "true");
		connectionProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");*/

		return dataSource;
	}



	private Properties getHibernateProperties() {
		//System.out.println("h2");
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto","update");
		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		
		//System.out.println("h3");
		
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClasses(Category.class);
		sessionBuilder.addAnnotatedClasses(Supplier.class);
		sessionBuilder.addAnnotatedClasses(User.class);
		sessionBuilder.addAnnotatedClasses(Product.class);
		sessionBuilder.addAnnotatedClasses(Cart.class);
		sessionBuilder.addAnnotatedClass(Address.class);
		
		//sessionBuilder.addAnnotatedClass(Payment.class);
	
		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		
		//System.out.println("tran");
		
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		
		//System.out.println("tran end");
		return transactionManager;
	}

	@Autowired
    @Bean(name = "categoryDAO")
    public CategoryDAO getCategoryDao(SessionFactory sessionFactory) 
	{
		//System.out.println("category");
    	return new CategoryDAOImpl(sessionFactory);
    }
	
	@Autowired
    @Bean(name = "productDAO")
    public ProductDAO getProductDao(SessionFactory sessionFactory) 
	{
    	return new ProductDAOImpl(sessionFactory);
    }

	@Autowired
    @Bean(name = "supplierDAO")
    public SupplierDAO getSupplierDao(SessionFactory sessionFactory) 
	{
	
    	return new SupplierDAOImpl(sessionFactory);
    }
	
	@Autowired
	@Bean(name= "userDAO")
	 public UserDAO getUserDao(SessionFactory sessionFactory) 
		{
	    	return new UserDAOImpl(sessionFactory);
	    }

	@Autowired
	@Bean(name = "cartDao")
	public CartDAO getCartDao(SessionFactory sessionFactory) {
		return (CartDAO) new CartDAOImpl(sessionFactory);
	}
	
	/*@Autowired
	@Bean(name="paymentDAO")
	public PaymentDAO getPaymentDao(SessionFactory sessionFactory)
	{
		return new PaymentDAOImpl(sessionFactory);
	}*/

	@Autowired
	@Bean(name="addressDAO")
	public AddressDAO getAddressDao(SessionFactory sessionFactory)
	{
		return new AddressDAOImpl(sessionFactory);
	}


}
