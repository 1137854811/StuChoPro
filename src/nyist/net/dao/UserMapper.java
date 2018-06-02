package nyist.net.dao;

import nyist.net.po.User;

public interface UserMapper {
	
	//根据用户id查询用户信息
	public User findUserById(int id);
	
	//添加用户
	public void insertUser(User user);
	

	
}
