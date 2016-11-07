package org.action;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	//注销用户
     public String logout(){
    	 Map session = ActionContext.getContext().getSession();
    	 session.remove("user");
    	 return SUCCESS;
     }
}
