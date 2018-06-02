package nyist.net.service;


import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;


public interface LoginService {
	
	//学生登陆校验
	public Student FindStudenById(String id);
	
	//老师登陆校验
	public Teacher FindTeacherById(String id);
	
	//管理员登录校验
	public Root FindRootById(String id);
}
