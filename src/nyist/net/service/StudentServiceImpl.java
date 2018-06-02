package nyist.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nyist.net.dao.LoginMapper;
import nyist.net.dao.StudentActionMapper;
import nyist.net.po.Root;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentActionMapper studentActionMapper;
	
	//�鿴���п��⣻
	public List<SProject> FindStudentByIdList() {
		List<SProject> sProjects=studentActionMapper.FindStudentByIdList();
		System.out.println("���ҳɹ�");
		return sProjects;
	}

	//ѧ���鿴��ѡ����
	public StuChooseProject FindStudentByIdOne(String id){
		StuChooseProject stuChooseProject=studentActionMapper.FindStudentByIdOne(id);
		System.out.println("���ҳɹ�");
		return stuChooseProject;
	}
	
	//ѧ���鿴������Ϣ
	public Student FindStuInfById(String id){
		Student student=studentActionMapper.FindStuInfById(id);
		System.out.println("���ҳɹ���");
		return student;
	}
	
	//�ж�ѧ���Ƿ�ѡ������
	public String CheckChoose(String id){
		String id1=studentActionMapper.CheckChoose(id);
		System.out.println("���ҳɹ�");
		return id1;
	}
	public SProject FindProject(String id){
		SProject sProject=studentActionMapper.FindProject(id);
		return sProject;
	}
	public Student FindStudent(String id){
		Student student=studentActionMapper.FindStudent(id);
		return student;
	}
	public void ChooseProject(StuChooseProject stuChooseProject){
		studentActionMapper.ChooseProject(stuChooseProject);
	}
	
	//��ѡ����
	public void DeleteProject(String id){
		studentActionMapper.DeleteProject(id);
	}
	
	//��Ϣ�޸�
	public int UpdataStuInf(Student student){
		return studentActionMapper.UpdataStuInf(student);
	}
	

}