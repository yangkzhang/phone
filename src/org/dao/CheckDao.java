package org.dao;

import java.util.List;
import org.model.PhoneNum;

public interface CheckDao {
     public List<PhoneNum> getPhone(String type);
}
