package nyist.net.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nyist.net.dao.LoginMapper;
import nyist.net.po.Root;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

@Service
public class LoginServiceImpl implements LoginService{

	
	//ע��usermapper
	@Autowired
	private LoginMapper loginMapper;
	
	//ѧ����¼��֤
	public Student FindStudenById(String id){
		Student student=loginMapper.FindStudenById(id);
		System.out.println("ѧ����֤�ɹ�");
		return student;
	}
	//��ʦ��½��֤
	public Teacher FindTeacherById(String id){
		Teacher teacher=loginMapper.FindTeacherById(id);
		System.out.println("��ʦ��֤�ɹ���");
		return teacher;
	}
	//����Ա��¼��֤
	public Root FindRootById(String id){ 
		Root root=loginMapper.FindRootById(id);
		System.out.println("����Ա��֤�ɹ�");
		return root;
	}
	
}
