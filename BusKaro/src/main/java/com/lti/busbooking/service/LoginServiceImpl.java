package com.lti.busbooking.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.busbooking.model.Login;
import com.lti.busbooking.dao.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService {


	@Autowired
	private LoginDAO LoginDAO;
	
	@Transactional
	public Login checkUser(Login theUser) {

		return LoginDAO.checkUser(theUser);
	}

}
