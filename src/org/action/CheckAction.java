package org.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.dao.CheckDao;
import org.dao.imp.CheckDaoImp;
import org.model.PhoneNum;

import com.opensymphony.xwork2.ActionSupport;

public class CheckAction extends ActionSupport{
     String type;
     Map<String, String> mapList;
     ArrayList<Map<String, String>> phoneInfo;
     
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Map<String, String> getMapList() {
		return mapList;
	}
	public void setMapList(Map<String, String> mapList) {
		this.mapList = mapList;
	}
	public ArrayList<Map<String, String>> getPhoneInfo() {
		return phoneInfo;
	}
	public void setPhoneInfo(ArrayList<Map<String, String>> phoneInfo) {
		this.phoneInfo = phoneInfo;
	}
	
	public String getPhone(){
		CheckDao checkDao = new CheckDaoImp();
		List<PhoneNum> list = checkDao.getPhone(type);//获得数据库返回的信息
		phoneInfo = new ArrayList<Map<String, String>>();
		int size = list.size();
		PhoneNum phone = null;
		for(int i=0;i<size;i++){
			mapList = new HashMap<String,String>();
			phone = list.get(i);
		    mapList.put("name", phone.getName());//以json格式返回
		    mapList.put("price", phone.getPrice()+"");
		    mapList.put("image", phone.getImage());
		    phoneInfo.add(mapList);//逐个放进phoneInfo，这个可以返回所有的json数据
		}
		return SUCCESS;
	}
}
