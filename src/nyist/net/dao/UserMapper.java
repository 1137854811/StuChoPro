package nyist.net.dao;

import nyist.net.po.User;

public interface UserMapper {
	
	//�����û�id��ѯ�û���Ϣ
	public User findUserById(int id);
	
	//����û�
	public void insertUser(User user);
	

	
}
