package nyist.net.dao;

import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;


public interface LoginMapper {

	//student登陆验证
	public Student FindStudenById(String id);
	
	//teacher登陆验证
	public Teacher FindTeacherById(String id);
	
	//root登陆验证
	public Root FindRootById(String id);
}
