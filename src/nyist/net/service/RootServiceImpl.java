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
	
	//管理员查看选题结果
	public List<StuChooseProject> FindAllChoProList(){
		List<StuChooseProject> stuChooseProjects=rootActionMapper.FindAllChoProList();
		return stuChooseProjects;
	}
	
	//管理员审核课题
	public List<Project> CheckAllProjects(){
		List<Project> projects=rootActionMapper.CheckAllProjects();
		return projects;
	}
	
	//查看教师
	public List<Teacher> CheckAllTeachers(){
		List<Teacher> teachers=rootActionMapper.CheckAllTeachers();
		return teachers;
	}
	
	//查看学生
	public List<Student> CheckAllStudents(){
		List<Student> students=rootActionMapper.CheckAllStudents();
		return students;
	}
	
	//删除选题结果
	public void DeleteChoRes(String id){
		rootActionMapper.DeleteChoRes(id);
	}
	
	//审核课题
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
	
	//教师管理
	public Teacher SelectTeacher(String Tid){
		Teacher teacher=rootActionMapper.SelectTeacher(Tid);
		return teacher;
	}
	
	//更新教师信息
	public void UpdateTeachers(Teacher teacher){
		rootActionMapper.UpdateTeachers(teacher);
	}
	//删除
	public void DeleteTeacher(String id){
		rootActionMapper.DeleteTeacher(id);
	}
	
	//添加教师
	public String SelectTeaId(String id){
		return rootActionMapper.SelectTeaId(id);
	}
	public void AddTea(Teacher teacher){
		rootActionMapper.AddTea(teacher);
	}
	
	//查找学生
	public Student SelectStudent(String id){
		Student student=rootActionMapper.SelectStudent(id);
		return student;
	}
	
	//修改学生信息
	public void ChangeStudent(Student student){
		rootActionMapper.ChangeStudent(student);
	}
	
	//删除学生
	public void DeleteStudent(String id){
		rootActionMapper.DeleteStudent(id);
	}
	
	//添加学生
	public String SelectStuId(String id){
		return rootActionMapper.SelectStuId(id);
	}
	public void AddStu(Student student){
		rootActionMapper.AddStu(student);
	}
}

	