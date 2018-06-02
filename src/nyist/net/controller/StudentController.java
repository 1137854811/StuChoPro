package nyist.net.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	//�鿴���п���
	@RequestMapping("Schoose.do")
	public String FindStudentByIdList(Model model){
		List<SProject> sProjects=studentService.FindStudentByIdList();
		model.addAttribute("StuSproject", sProjects);
		return "Schoose";
	}
	//�鿴ѡ����
	@RequestMapping("Select result.do")
	public ModelAndView selectResult(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String idString=(String) request.getSession().getAttribute("student");
		System.out.println(idString);
		StuChooseProject stuChooseProject=studentService.FindStudentByIdOne(idString);
		ModelAndView mo=new ModelAndView();
		mo.addObject("StudentProjectOne", stuChooseProject);
		mo.setViewName("Select result");
		return mo;
	}
	//������Ϣ
	@RequestMapping("StuInf.do")
	public String selectStuInf(HttpServletRequest request,HttpServletResponse response,Model model){
		String idString=(String) request.getSession().getAttribute("student");
		System.out.println(idString);
		Student student=studentService.FindStuInfById(idString);
		System.out.println(student);
		model.addAttribute("StuInf", student);
		return "StuInf";
	}
	
	//ѡ��
	@RequestMapping("StudentChoose.do")
	public String ChooseProject(String SchooseKe,HttpServletRequest request,HttpServletResponse response){
		System.out.println(SchooseKe);
		
		String Stuid=(String) request.getSession().getAttribute("student");
		String Sbid=studentService.CheckChoose(Stuid);
		
		if(Sbid!=null){
			return "SChooseChongfu";
		}else {
			SProject sProject=studentService.FindProject(SchooseKe);
			Student student=studentService.FindStudent(Stuid);
			StuChooseProject stuChooseProject=new StuChooseProject();
			stuChooseProject.setBno(sProject.getBno());
			stuChooseProject.setBname(sProject.getBname());
			stuChooseProject.setSno(student.getId());
			stuChooseProject.setSname(student.getName());
			stuChooseProject.setTno(sProject.getTno());
			studentService.ChooseProject(stuChooseProject);
			return "SchooseSuccess";
		}
	}
	
	//��ѡ����
	@RequestMapping("SDeleteKT.do")
	public String DeleteProjects(String SDeleteKT){
		System.out.println("AAAAAAAAA"+SDeleteKT);
		studentService.DeleteProject(SDeleteKT);
		return "StuResultDelete";
	}
	
	//��Ϣ�޸�
	@RequestMapping("ChangeStuInf.do")
	public String UpdataStuInfs(Student student){
		int a=studentService.UpdataStuInf(student);
		System.out.println("aaaaaaa="+a);
		return "redirect:StuInf.do";
	}
	//�˳�ϵͳ
	@RequestMapping("login.do")
	public String loginString(){
		return "login";
	}
}
