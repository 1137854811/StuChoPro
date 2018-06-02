package nyist.net.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import nyist.net.dao.LoginMapper;
import nyist.net.dao.StudentActionMapper;
import nyist.net.po.Root;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentActionMapper studentActionMapper;
	
	//查看所有课题；
	public List<SProject> FindStudentByIdList() {
		List<SProject> sProjects=studentActionMapper.FindStudentByIdList();
		System.out.println("查找成功");
		return sProjects;
	}

	//学生查看已选课题
	public StuChooseProject FindStudentByIdOne(String id){
		StuChooseProject stuChooseProject=studentActionMapper.FindStudentByIdOne(id);
		System.out.println("查找成功");
		return stuChooseProject;
	}
	
	//学生查看个人信息
	public Student FindStuInfById(String id){
		Student student=studentActionMapper.FindStuInfById(id);
		System.out.println("查找成功！");
		return student;
	}
	
	//判断学生是否选过课题
	public String CheckChoose(String id){
		String id1=studentActionMapper.CheckChoose(id);
		System.out.println("查找成功");
		return id1;
	}
	public SProject FindProject(String id){
		SProject sProject=studentActionMapper.FindProject(id);
		return sProject;
	}
	public Student FindStudent(String id){
		Student student=studentActionMapper.FindStudent(id);
		return student;
	}
	public void ChooseProject(StuChooseProject stuChooseProject){
		studentActionMapper.ChooseProject(stuChooseProject);
	}
	
	//退选课题
	public void DeleteProject(String id){
		studentActionMapper.DeleteProject(id);
	}
	
	//信息修改
	public int UpdataStuInf(Student student){
		return studentActionMapper.UpdataStuInf(student);
	}
	

}