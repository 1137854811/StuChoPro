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
	
	//查询姓名
	public String FindTeaNameById(String id){
		String name=teacherActionMapper.FindTeaNameById(id);
		return name;
	}
	//老师查看选自己课题的学生
	public List<StuChooseProject> FindStuChooseList(String id) {
		List<StuChooseProject> choosProjects=teacherActionMapper.FindStuChooseList(id);
		return choosProjects;
	}
	
	//老师管理学生
	public List<Student> FindStuInfList(){
		List<Student> students=teacherActionMapper.FindStuInfList();
		return students;
	}
	
	//老师修改自己的信息
	public Teacher FindTeacherInf(String id){
		Teacher teacher=teacherActionMapper.FindTeacherInf(id);
		return teacher;
	}
	
	//老师删除课题
	public void DeleteProjects(String id){
		teacherActionMapper.DeleteProjects(id);
	}
	
	//提交课题 
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
	
	//查看自己课题的选题结果
	public void SelectProject(String id){
		teacherActionMapper.SelectProject(id);
	}
	
	//管理学生
	public void DeleteStudent(String id){
		teacherActionMapper.DeleteStudent(id);
	}
	
	//更新个人信息
	public void UpdateTeacher(Teacher teacher){
		teacherActionMapper.UpdateTeacher(teacher);
	}
}
