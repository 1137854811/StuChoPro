package nyist.net.dao;

import java.util.List;

import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;

public interface StudentActionMapper {
	
	//查看所有通过审核的课题
	public List<SProject> FindStudentByIdList();
	
	//学生查看自己选题结果
	public StuChooseProject FindStudentByIdOne(String id);
	
	//学生查看个人信息
	public Student FindStuInfById(String id);
	
	//判断学生是否选过课题
	public String CheckChoose(String id);
	public SProject FindProject(String id);
	public Student FindStudent(String id);
	
	//选题
	public void ChooseProject(StuChooseProject stuChooseProject);
	
	//退选
	public void DeleteProject(String id);
	
	//信息修改
	public int UpdataStuInf(Student student);
}
