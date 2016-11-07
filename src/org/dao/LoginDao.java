package org.dao;

import org.model.Login;
public interface LoginDao {
     public Login login(String name,String password);
     public Login regist(String name,String password);
}
