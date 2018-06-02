package nyist.net.service;

import java.util.List;

import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;

public interface StudentService {

	//学生查看课题
	public List<SProject> FindStudentByIdList();
	
	//学生查看自己选题结果
	public StuChooseProject FindStudentByIdOne(String id);
	
	//学生查看个人信息
	public Student FindStuInfById(String id);
	
	//判断学生是否选过课题
	public String CheckChoose(String id);
	public SProject FindProject(String id);
	public Student FindStudent(String id);
	public void ChooseProject(StuChooseProject stuChooseProject);
	
	//删除学生
	public void DeleteProject(String id);
	
	//信息修改
	public int UpdataStuInf(Student student);
	
	
}
