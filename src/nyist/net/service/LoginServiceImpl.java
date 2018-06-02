package nyist.net.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nyist.net.dao.LoginMapper;
import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

@Service
public class LoginServiceImpl implements LoginService{

	
	//注入usermapper
	@Autowired
	private LoginMapper loginMapper;
	
	//学生登录验证
	public Student FindStudenById(String id){
		Student student=loginMapper.FindStudenById(id);
		System.out.println("学生验证成功");
		return student;
	}
	//老师登陆验证
	public Teacher FindTeacherById(String id){
		Teacher teacher=loginMapper.FindTeacherById(id);
		System.out.println("教师验证成功！");
		return teacher;
	}
	//管理员登录验证
	public Root FindRootById(String id){ 
		Root root=loginMapper.FindRootById(id);
		System.out.println("管理员验证成功");
		return root;
	}
	
}
