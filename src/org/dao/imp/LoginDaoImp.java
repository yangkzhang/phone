package org.dao.imp;

import org.dao.LoginDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Login;
public class LoginDaoImp implements LoginDao{

	public Login login(String name, String password) {
		try{
			//获取session对象
			Session session = org.util.HibernateSessionFactory.getSession();
		    Transaction ts = session.beginTransaction();
		    //按照一定条件查询
		    Query query = session.createQuery("from Login where name=? and password=?");
		    query.setParameter(0, name);//设置查找的参数
		    query.setParameter(1, password);
		    query.setMaxResults(1);
		    Login login = (Login)query.uniqueResult();
		    if(login != null){//查到
		    	return login;
		    }else{//没查到
		    	return null;
		    }
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public Login regist(String name, String password) {
		try{
			//获取session对象
			Session session = org.util.HibernateSessionFactory.getSession();
		    Transaction ts = session.beginTransaction();
		    //按照一定条件查询
		    Query query = session.createQuery("from Login where name=?");
		    query.setParameter(0, name);
		    query.setMaxResults(1);
		    Login login = (Login)query.uniqueResult();
		   
		    if(login == null){//还没有这个用户
		    	//插入这个用户
		    	ts = session.beginTransaction();
		    	Login log = new Login();
		    	log.setName(name);
		    	log.setPassword(password);
		    	session.save(log);//插入数据库
		    	ts.commit();
		    	return log;
		    }else{//已经存在这个用户
		    	return null;
		    }
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
