package nyist.net.dao;

import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;


public interface LoginMapper {

	//student��½��֤
	public Student FindStudenById(String id);
	
	//teacher��½��֤
	public Teacher FindTeacherById(String id);
	
	//root��½��֤
	public Root FindRootById(String id);
}
