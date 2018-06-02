package nyist.net.service;

import java.util.List;

import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;

public interface StudentService {

	//ѧ���鿴����
	public List<SProject> FindStudentByIdList();
	
	//ѧ���鿴�Լ�ѡ����
	public StuChooseProject FindStudentByIdOne(String id);
	
	//ѧ���鿴������Ϣ
	public Student FindStuInfById(String id);
	
	//�ж�ѧ���Ƿ�ѡ������
	public String CheckChoose(String id);
	public SProject FindProject(String id);
	public Student FindStudent(String id);
	public void ChooseProject(StuChooseProject stuChooseProject);
	
	//ɾ��ѧ��
	public void DeleteProject(String id);
	
	//��Ϣ�޸�
	public int UpdataStuInf(Student student);
	
	
}
