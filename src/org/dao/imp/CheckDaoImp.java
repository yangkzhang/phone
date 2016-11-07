package org.dao.imp;

import java.util.List;
import org.dao.CheckDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.model.PhoneNum;

public class CheckDaoImp implements CheckDao{
     
	public List<PhoneNum> getPhone(String type){
		//获取操作数据库session对象
		Session session = org.util.HibernateSessionFactory.getSession();
		if(type.equals("全部")){//查找全部
		     Query query = session.createQuery("from PhoneNum");
		     List<PhoneNum> list = query.list();
		     return list;
		}else{//按条件查找
			 Query query = session.createQuery("from PhoneNum where type = ?");
			 query.setParameter(0, type);
			 List<PhoneNum> list = query.list();
			 return list;
		}
	}
}
