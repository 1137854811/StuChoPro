package nyist.net.service;

import nyist.net.dao.UserMapper;
import nyist.net.po.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	
	//ע��usermapper
	@Autowired
	private UserMapper userMapper;
	
	public User findUserById(int id){
		User user=userMapper.findUserById(id);
		System.out.println("�û���ѯ�ɹ�");
		return user;
	}
	
	
}
