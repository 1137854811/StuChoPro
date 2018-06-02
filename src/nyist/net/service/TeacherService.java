package nyist.net.service;

import java.util.List;

import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

public interface TeacherService {

	//��ʦ�鿴�Լ��Ŀ���
	public List<Project> FindProjectByIdList(String id);

	//��ѯ����
	public String FindTeaNameById(String id);
	
	//��ʦ�鿴ѡ�Լ������ѧ��
	public List<StuChooseProject> FindStuChooseList(String id);
	
	//��ʦ����ѧ��
	public List<Student> FindStuInfList();
	
	//��ʦ�޸��Լ�����Ϣ
	public Teacher FindTeacherInf(String id);
	
	//��ʦɾ������
	public void DeleteProjects(String id);
	
	//�ύ����
	public void InsertProject(Project project);
	public String SelectProjectB(String id);
	public String SelectProjectS(String id);
	
	//�鿴�Լ������ѡ����
	public void SelectProject(String id);
	
	//����ѧ��
	public void DeleteStudent(String id);
	
	//���¸�����Ϣ
	public void UpdateTeacher(Teacher teacher);
}
