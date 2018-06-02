package nyist.net.controller;

import java.util.List;

import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;
import nyist.net.service.RootService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller 
public class RootController {
	
	@Autowired
	private RootService rootService;
	//�鿴ѡ����
	@RequestMapping("RstuResult.do")
	public String FindAllChooseProjects(Model model){
		List<StuChooseProject> lChooseProjects=rootService.FindAllChoProList();
		model.addAttribute("RstuResult", lChooseProjects);
		return "RstuResult";
	}
	
	//��˿���
	@RequestMapping("Rcheckketi.do")
	public String CheckAllProject(Model model){
		List<Project> projects=rootService.CheckAllProjects();
		model.addAttribute("Rcheckketi", projects);
		return "Rcheckketi";
	}
	
	//�鿴��ʦ
	@RequestMapping("RmanageTeacher.do")
	public String CheckAllTeacher(Model model){
		List<Teacher> teachers=rootService.CheckAllTeachers();
		model.addAttribute("RmanageTeacher", teachers);
		return "RmanageTeacher";
	}
	
	//�鿴ѧ��
	@RequestMapping("RmanageStudent.do")
	public String CheckAllStudent(Model model){
		List<Student> students=rootService.CheckAllStudents();
		model.addAttribute("RmanageStudent", students);
		return "RmanageStudent";
	}
	
	//ɾ��ѡ����
	@RequestMapping("DeleteRes.do")
	public String DeleteChoRes(String DeleteKETE){
		rootService.DeleteChoRes(DeleteKETE);
		return "redirect:RstuResult.do";
	}
	
	//��˿���
	@RequestMapping("PassProject.do")
	public String PassProject(String pass,String RdeleteK){
		if (pass!=null) {
			Project project=rootService.SelectProject(pass);
			SProject sProject=new SProject();
			sProject.setBno(project.getCno());
			sProject.setBname(project.getCname());
			sProject.setTno(project.getTid());
			sProject.setTname(project.getCteacher());
			rootService.PassProject(sProject);
			rootService.DeleteBiyePro(pass);
			return "redirect:Rcheckketi.do";
		}
		else {
			rootService.DeleteBiyePro(RdeleteK);
			return "RDeletePro";
		}
	}
	//searchTeacher
	@RequestMapping("RSearchTea.do")
	public String Redict(){
		return "RSearchTea";
	}
	
	//�޸Ľ�ʦ��Ϣ
	@RequestMapping("ChangeTeaInf.do")
	public String ChangeteaInf(Teacher teacher){
		System.out.println("111111111");
		rootService.UpdateTeachers(teacher);
		System.out.println("222222222");
		return "RSearchTeaSuccess";
	}
	//��ʦ����
	@RequestMapping("JiansuoTeacher.do")
	public String SelectTeacher(Model model,String Tid,String RcheckT,String RdeleteT,String RAddTea){
		if (Tid!=null) {
			Teacher teacher1=rootService.SelectTeacher(Tid);
			if (teacher1==null) {
				return "RnotFoundTeacher";
			}
			else {
				model.addAttribute("JiansuoTeacher", teacher1);
				return "RSearchTea";
			}
		}else if (RcheckT!=null) {
			System.out.println(RcheckT);
			Teacher teacher2=rootService.SelectTeacher(RcheckT);
			model.addAttribute("JiansuoTeacher", teacher2);
			return "RSearchTea";
		}else if (RdeleteT!=null) {
			System.out.println(RdeleteT);
			rootService.DeleteTeacher(RdeleteT);
			return "redirect:RmanageTeacher.do";
		}else {
			return "RaddTea";
		}
	}
	
	//��ת
	@RequestMapping("ToPage.do")
	public String ToPage(){
		return "RaddTea";
	}
	//���
	@RequestMapping("AddTeas.do")
	public String AddTeaInf(Teacher teacher){
		System.out.println(teacher.getId());
		String idString=rootService.SelectTeaId(teacher.getId());
		if (idString!=null) {
			return "RaddTeaChong";
		}else {
			rootService.AddTea(teacher);
			return "RaddTeaSuccess";
		}
	}
	
	//����ѧ��
	@RequestMapping("SelectStudent.do")
	public String SelectStudents(String Sid,Model model,String SCheck,String RdeleteS){
		Student student=rootService.SelectStudent(Sid);
		model.addAttribute("student", student);
		if (RdeleteS!=null) {
			rootService.DeleteStudent(RdeleteS);
			return"redirect:RmanageStudent.do";
		}
		else if (SCheck!=null) {
			Student student2=rootService.SelectStudent(SCheck);
			model.addAttribute("student", student2);
			return "RSearchStu";
		}
		else if (student!=null) {
			return "RSearchStu";
		}else {
			return "RnotFoundStudent";
		}
	}
	
	//�޸�ѧ����Ϣ
	@RequestMapping("ChangeStudent.do")
	public String ChangeStudent(Student student){
		rootService.ChangeStudent(student);
		return "RSearchStuSuccess";
	}
	//searchStudent
	@RequestMapping("RSearchStu.do")
	public String Redict1(){
		return "RSearchStu";
	}
	//ת�����ѧ��
	@RequestMapping("RAddstu.do")
	public String Addstus(){
		return "RAddStu";
	}
	
	//���ѧ��
	@RequestMapping("RAddStu.do")
	public String AddStus(Student student){
		String id=rootService.SelectStuId(student.getId());
		if (id!=null) {
			return "RaddStuChong";
		}else {
			rootService.AddStu(student);
			return "RaddStuSuccess";
		}
	}
}
