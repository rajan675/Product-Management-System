package com.company;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
    @Autowired
	private HibernateTemplate hibernateTemplate;
    
    //Create a product
	@Transactional
    public void productCreate(Product product) {
    	this.hibernateTemplate.saveOrUpdate(product);
    }
	
	//Get List
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//Delete single product
	@Transactional
	public void delete(int id) {
	 Product p=this.hibernateTemplate.load(Product.class,id);
	 this.hibernateTemplate.delete(p);
	}
	
	//Get detail of single product
	public Product getProduct(int id) {
		return this.hibernateTemplate.get(Product.class,id);
	}
}
