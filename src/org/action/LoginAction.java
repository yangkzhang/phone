package org.action;

import java.util.Map;
import org.dao.LoginDao;
import org.dao.imp.LoginDaoImp;
import org.model.Login;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	public Login login;
	public Login getLogin(){
		return login;
	}
	public void setLogin(){
		this.login = login;
	}
	//用户登录时检测用户的用户名和密码
	public String login()throws Exception{
		LoginDao loginDao = new LoginDaoImp();
		Login user = loginDao.login(login.getName(), login.getPassword());
		if(user != null){
			//如果用户存在，创建session并把用户放入session
			Map session = (Map)ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	//用户注册
	public String regist()throws Exception{
		LoginDao loginDao = new LoginDaoImp();
		Login user = loginDao.regist(login.getName(), login.getPassword());
		if(user != null){
			//如果插入用户成功，创建session并把用户放入session
			Map session = (Map)ActionContext.getContext().getSession();
			session.put("user", user);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}

}
