package nyist.net.service;

import java.util.List;

import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

public interface RootService {
	
	//管理员查看所有选题结果
	public List<StuChooseProject> FindAllChoProList();
	
	//管理员审核课题
	public List<Project> CheckAllProjects();
	
	//查看教师
	public List<Teacher> CheckAllTeachers();
	
	//查看学生
	public List<Student> CheckAllStudents();
	
	//删除选题结果
	public void DeleteChoRes(String id);
	
	//审核课题
	public Project SelectProject(String id);
	public void PassProject(SProject Project);
	public void DeleteBiyePro(String id);
	
	//教师管理
	public Teacher SelectTeacher(String Tid);
	
	//更新教师信息
	public void UpdateTeachers(Teacher teacher);
	//删除
	public void DeleteTeacher(String id);
	
	//添加教师
	public String SelectTeaId(String id);
	public void AddTea(Teacher teacher);
	
	//查找学生
	public Student SelectStudent(String id);
	
	//修改学生信息
	public void ChangeStudent(Student student);
	
	//删除学生
	public void DeleteStudent(String id);
	
	//添加学生
	public String SelectStuId(String id);
	public void AddStu(Student student);
}
