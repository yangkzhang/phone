package org.dao.imp;

import java.util.Map;

import org.model.Login;
import org.dao.MessageDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.Message;

import com.opensymphony.xwork2.ActionContext;

import java.util.List;

public class MessageDaoImp implements MessageDao{

	public List<Message> getMessage(String str){
		try{
			Map session = ActionContext.getContext().getSession();//获取登录用户session对象
			String username = ((Login)session.get("user")).getName();
			//String username = "11";
			
			//获取操作数据库session对象
			Session sess = org.util.HibernateSessionFactory.getSession();
			if(!str.equals("")){ //如果内容不空，则插入数据库
			    Transaction ts = sess.beginTransaction();
			    Message message = new Message();
			    message.setUser(username);
			    message.setMes(str);
			    sess.save(message);//插入数据库
			    ts.commit();
			}
		    
		    Query query = sess.createQuery("from Message order by id desc");//查询获取留言内容
		    List<Message> list = query.list();
		    return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
