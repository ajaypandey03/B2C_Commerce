package com.b2b.ecommerceBackend.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.b2b.ecommerceBackend.dao.CategoryDAO;
import com.b2b.ecommerceBackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<>();
	static {
		Category category = new Category();
		category.setId(001);
		category.setName("Mobile");
		category.setDescription("This is Mobile Description");
		category.setImageUrl("CAT_2.png");
		categories.add(category);
		
		category = new Category();
		category.setId(002);
		category.setName("Television");
		category.setDescription("This is Television Description");
		category.setImageUrl("CAT_3.png");
		categories.add(category);
		
		category = new Category();
		category.setId(003);
		category.setName("Laptop");
		category.setDescription("This is Laptop Description");
		category.setImageUrl("CAT_4.png");
		categories.add(category);
		
		category = new Category();
		category.setId(004);
		category.setName("Washing Machine");
		category.setDescription("This is Washing Machine Description");
		category.setImageUrl("CAT_5.png");
		categories.add(category);
	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		for(Category category : categories) {
			if(category.getId() == id) {
				return category;
			}
		}
		return null;
	}

}
