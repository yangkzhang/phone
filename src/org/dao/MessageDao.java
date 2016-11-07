package org.dao;

import org.model.Message;
import java.util.List;

public interface MessageDao {

	public List<Message> getMessage(String str);
}
