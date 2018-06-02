package nyist.net.dao;

import java.util.List;

import nyist.net.po.Project;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

public interface TeacherActionMapper {

	//老师查看自己未审核的课题
	public List<Project> FindProjectByIdList(String id);
	
	//查询姓名
	public String FindTeaNameById(String id);
	
	//老师查看选自己课题的学生
	public List<StuChooseProject> FindStuChooseList(String id);
	
	//老师管理学生
	public List<Student> FindStuInfList();
	
	//老师修改自己的信息
	public Teacher FindTeacherInf(String id);
	
	//老师删除课题
	public void DeleteProjects(String id);
	
	//提交课题
	public void InsertProject(Project project);
	public String SelectProjectB(String id);
	public String SelectProjectS(String id);
	
	//查看自己课题的选题结果
	public void SelectProject(String id);
	
	//管理学生
	public void DeleteStudent(String id);
	
	//更新个人信息
	public void UpdateTeacher(Teacher teacher);
}
