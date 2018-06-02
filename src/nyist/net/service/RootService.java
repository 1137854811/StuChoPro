package nyist.net.service;

import java.util.List;

import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

public interface RootService {
	
	//����Ա�鿴����ѡ����
	public List<StuChooseProject> FindAllChoProList();
	
	//����Ա��˿���
	public List<Project> CheckAllProjects();
	
	//�鿴��ʦ
	public List<Teacher> CheckAllTeachers();
	
	//�鿴ѧ��
	public List<Student> CheckAllStudents();
	
	//ɾ��ѡ����
	public void DeleteChoRes(String id);
	
	//��˿���
	public Project SelectProject(String id);
	public void PassProject(SProject Project);
	public void DeleteBiyePro(String id);
	
	//��ʦ����
	public Teacher SelectTeacher(String Tid);
	
	//���½�ʦ��Ϣ
	public void UpdateTeachers(Teacher teacher);
	//ɾ��
	public void DeleteTeacher(String id);
	
	//��ӽ�ʦ
	public String SelectTeaId(String id);
	public void AddTea(Teacher teacher);
	
	//����ѧ��
	public Student SelectStudent(String id);
	
	//�޸�ѧ����Ϣ
	public void ChangeStudent(Student student);
	
	//ɾ��ѧ��
	public void DeleteStudent(String id);
	
	//���ѧ��
	public String SelectStuId(String id);
	public void AddStu(Student student);
}
