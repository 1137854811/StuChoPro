package nyist.net.service;

import java.util.List;

import nyist.net.dao.RootActionMapper;
import nyist.net.dao.StudentActionMapper;
import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RootServiceImpl implements RootService{
	
	@Autowired
	private RootActionMapper rootActionMapper;
	
	//����Ա�鿴ѡ����
	public List<StuChooseProject> FindAllChoProList(){
		List<StuChooseProject> stuChooseProjects=rootActionMapper.FindAllChoProList();
		return stuChooseProjects;
	}
	
	//����Ա��˿���
	public List<Project> CheckAllProjects(){
		List<Project> projects=rootActionMapper.CheckAllProjects();
		return projects;
	}
	
	//�鿴��ʦ
	public List<Teacher> CheckAllTeachers(){
		List<Teacher> teachers=rootActionMapper.CheckAllTeachers();
		return teachers;
	}
	
	//�鿴ѧ��
	public List<Student> CheckAllStudents(){
		List<Student> students=rootActionMapper.CheckAllStudents();
		return students;
	}
	
	//ɾ��ѡ����
	public void DeleteChoRes(String id){
		rootActionMapper.DeleteChoRes(id);
	}
	
	//��˿���
	public Project SelectProject(String id){
		Project project=rootActionMapper.SelectProject(id);
		return project;
	}
	public void PassProject(SProject Project){
		rootActionMapper.PassProject(Project);
	}
	public void DeleteBiyePro(String id){
		rootActionMapper.DeleteBiyePro(id);
	}
	
	//��ʦ����
	public Teacher SelectTeacher(String Tid){
		Teacher teacher=rootActionMapper.SelectTeacher(Tid);
		return teacher;
	}
	
	//���½�ʦ��Ϣ
	public void UpdateTeachers(Teacher teacher){
		rootActionMapper.UpdateTeachers(teacher);
	}
	//ɾ��
	public void DeleteTeacher(String id){
		rootActionMapper.DeleteTeacher(id);
	}
	
	//��ӽ�ʦ
	public String SelectTeaId(String id){
		return rootActionMapper.SelectTeaId(id);
	}
	public void AddTea(Teacher teacher){
		rootActionMapper.AddTea(teacher);
	}
	
	//����ѧ��
	public Student SelectStudent(String id){
		Student student=rootActionMapper.SelectStudent(id);
		return student;
	}
	
	//�޸�ѧ����Ϣ
	public void ChangeStudent(Student student){
		rootActionMapper.ChangeStudent(student);
	}
	
	//ɾ��ѧ��
	public void DeleteStudent(String id){
		rootActionMapper.DeleteStudent(id);
	}
	
	//���ѧ��
	public String SelectStuId(String id){
		return rootActionMapper.SelectStuId(id);
	}
	public void AddStu(Student student){
		rootActionMapper.AddStu(student);
	}
}

	