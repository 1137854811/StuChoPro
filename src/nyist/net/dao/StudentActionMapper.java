package nyist.net.dao;

import java.util.List;

import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;

public interface StudentActionMapper {
	
	//�鿴����ͨ����˵Ŀ���
	public List<SProject> FindStudentByIdList();
	
	//ѧ���鿴�Լ�ѡ����
	public StuChooseProject FindStudentByIdOne(String id);
	
	//ѧ���鿴������Ϣ
	public Student FindStuInfById(String id);
	
	//�ж�ѧ���Ƿ�ѡ������
	public String CheckChoose(String id);
	public SProject FindProject(String id);
	public Student FindStudent(String id);
	
	//ѡ��
	public void ChooseProject(StuChooseProject stuChooseProject);
	
	//��ѡ
	public void DeleteProject(String id);
	
	//��Ϣ�޸�
	public int UpdataStuInf(Student student);
}
