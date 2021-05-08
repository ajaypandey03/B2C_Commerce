package com.b2b.ecommerceBackend.dao;

import java.util.List;

import com.b2b.ecommerceBackend.dto.Category;

public interface CategoryDAO {
	
	List<Category> list();
	Category get(int id);
	

}
