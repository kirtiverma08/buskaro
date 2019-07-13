package com.lti.busbooking.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.lti.busbooking.dao.UserDAO;
import com.lti.busbooking.model.User;

public class UserServiceImpl implements UserService 
{
	@Autowired
	private UserDAO userDAO;
	   
	@Transactional
	     public void saveUser(User theUser) {
	 userDAO.saveUser(theUser);

}
}
