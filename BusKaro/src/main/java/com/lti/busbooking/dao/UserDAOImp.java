package com.lti.busbooking.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.busbooking.model.User;

@Repository
public class UserDAOImp implements UserDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	public void saveUser(User theUser) {
	Session currentSession= sessionFactory.getCurrentSession();
	  currentSession.saveOrUpdate(theUser);
	 }

}
