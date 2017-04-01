package cn.enterprise.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.enterprise.po.Admin;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void add(Admin admin) {
		
	}

	@Override
	public String getPwd(String email) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select pwd from admin where email = ?";
		Query query = session.createSQLQuery(sql);
		query.setString(0, email);
		return (String) query.uniqueResult();
	}

	@Override
	public String getName(String email) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select name from admin where email = ?";
		Query query = session.createSQLQuery(sql);
		query.setString(0, email);
		return (String) query.uniqueResult();
	}

}
