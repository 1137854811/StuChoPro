package nyist.net.service;

import nyist.net.dao.UserMapper;
import nyist.net.po.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	//注入usermapper
	@Autowired
	private UserMapper userMapper;
	
	public User findUserById(int id){
		User user=userMapper.findUserById(id);
		System.out.println("用户查询成功");
		return user;
	}
	
	
}
