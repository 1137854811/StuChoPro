package nyist.net.service;

import java.util.List;

import nyist.net.dao.TeacherActionMapper;
import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	private TeacherActionMapper teacherActionMapper;
	
	public List<Project> FindProjectByIdList(String id){
		List<Project> project=teacherActionMapper.FindProjectByIdList(id);
		return project;
	}
	
	//��ѯ����
	public String FindTeaNameById(String id){
		String name=teacherActionMapper.FindTeaNameById(id);
		return name;
	}
	//��ʦ�鿴ѡ�Լ������ѧ��
	public List<StuChooseProject> FindStuChooseList(String id) {
		List<StuChooseProject> choosProjects=teacherActionMapper.FindStuChooseList(id);
		return choosProjects;
	}
	
	//��ʦ����ѧ��
	public List<Student> FindStuInfList(){
		List<Student> students=teacherActionMapper.FindStuInfList();
		return students;
	}
	
	//��ʦ�޸��Լ�����Ϣ
	public Teacher FindTeacherInf(String id){
		Teacher teacher=teacherActionMapper.FindTeacherInf(id);
		return teacher;
	}
	
	//��ʦɾ������
	public void DeleteProjects(String id){
		teacherActionMapper.DeleteProjects(id);
	}
	
	//�ύ���� 
	public void InsertProject(Project project){
		teacherActionMapper.InsertProject(project);
	}
	public String SelectProjectB(String id){
		String cno=teacherActionMapper.SelectProjectB(id);
		System.out.println("cno"+cno);
		return cno;
	}
	public String SelectProjectS(String id){
		String bno=teacherActionMapper.SelectProjectS(id);
		System.out.println("bno"+bno);
		return bno;
	}
	
	//�鿴�Լ������ѡ����
	public void SelectProject(String id){
		teacherActionMapper.SelectProject(id);
	}
	
	//����ѧ��
	public void DeleteStudent(String id){
		teacherActionMapper.DeleteStudent(id);
	}
	
	//���¸�����Ϣ
	public void UpdateTeacher(Teacher teacher){
		teacherActionMapper.UpdateTeacher(teacher);
	}
}
