package nyist.net.service;


import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;


public interface LoginService {
	
	//ѧ����½У��
	public Student FindStudenById(String id);
	
	//��ʦ��½У��
	public Teacher FindTeacherById(String id);
	
	//����Ա��¼У��
	public Root FindRootById(String id);
}
