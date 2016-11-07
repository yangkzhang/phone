package org.action;

import org.dao.MessageDao;
import org.dao.imp.MessageDaoImp;
import org.model.Message;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport{
     private String message = null;
     Map<String,String> messageInfo;
     ArrayList<Map<String,String>> messageList;
     
     public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public Map<String, String> getMessageInfo() {
		return messageInfo;
	}


	public void setMessageInfo(Map<String, String> messageInfo) {
		this.messageInfo = messageInfo;
	}
	public ArrayList<Map<String, String>> getMessageList() {
		return messageList;
	}


	public void setMessageList(ArrayList<Map<String, String>> messageList) {
		this.messageList = messageList;
	}

	//得到信息
     public String getList(){
    	 MessageDao messageDao = new MessageDaoImp();
    	 List<Message> list = messageDao.getMessage(message);//获得数据库返回的信息
    	 messageList = new ArrayList<Map<String,String>>();
    	 int size = list.size();
    	 for(int i = 0;i<size;i++){
    		 messageInfo =  new HashMap<String,String>();
    		 Message mess = (Message)list.get(i);//以json格式返回
    		 messageInfo.put("username", mess.getUser());
    		 messageInfo.put("message", mess.getMes());
             messageList.add(messageInfo);//逐个放进messageList,这样可以返回所有的数据
    	 }
    	 return SUCCESS;
     }

}
