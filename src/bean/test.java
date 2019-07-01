package bean;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class test {
	static Configuration cfg = null;
	static SessionFactory sessionFactory = null;
	static{
		cfg = new Configuration();
		cfg.configure();
		sessionFactory = cfg.buildSessionFactory();
	}
	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}
	public static Session getSessionObject(){
		return sessionFactory.getCurrentSession();
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
