package com.lti.busbooking.dao;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.busbooking.model.Login;
@Repository
public class LoginDAOImpl implements LoginDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public Login checkUser(Login theUser) {
		
		Login usr=null;
		Session session=null;
		try {
			session = sessionFactory.getCurrentSession();
			CriteriaBuilder cb=session.getCriteriaBuilder();
			 CriteriaQuery<Login> cq=cb.createQuery(Login.class);
			 Root<Login> root=cq.from(Login.class);
			//cq.select(root.get("id"));
				cq.select(root).where(cb.and(
						cb.equal(root.get("email"), theUser.getEmail()),
						cb.equal(root.get("password"),theUser.getPassword())
					));
				
				Query query = session.createQuery(cq);
				query.setMaxResults(1);
				usr=(Login) query.getSingleResult();
				
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (session != null) {
						//session.close();
					}
				}
				
				return usr;
			}


}
