package nyist.net.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nyist.net.po.Project;
import nyist.net.po.SProject;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;
import nyist.net.service.TeacherService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("Tmanageketi.do")
	public String FindProjectList(Model model,HttpServletRequest request,HttpServletResponse response){
		String id=(String)request.getSession().getAttribute("teacher");
		System.out.println(id);
		List<Project> Projects=teacherService.FindProjectByIdList(id);
		System.out.println(Projects);
		model.addAttribute("TeaSproject", Projects);
		return "Tmanageketi";
	}
	
	@RequestMapping("Taddketi.do")
	public String FindTeaName(Model model,HttpServletRequest request,HttpServletResponse response){
		String id=(String)request.getSession().getAttribute("teacher");
		String name=teacherService.FindTeaNameById(id);
		model.addAttribute("TeaName", name);
		return "Taddketi";
	}
	//查看选自己课题的学生
	@RequestMapping("TSelect result.do")
	public String FindStuProject(Model model,HttpServletRequest request,HttpServletResponse response){
		String id=(String)request.getSession().getAttribute("teacher");
		List<StuChooseProject> sProjects=teacherService.FindStuChooseList(id);
		System.out.println(sProjects);
		model.addAttribute("TSelect", sProjects);
		return "TSelect result";
	}
	//老师管理学生
	@RequestMapping("Tstudent.do")
	public String FindStuInf(Model model){
		List<Student> students=teacherService.FindStuInfList();
		System.out.println(students);
		model.addAttribute("Tstudent", students);
		return "Tstudent";
	}
	
	//查看个人信息
	@RequestMapping("Tinf.do")
	public String FindTeaInf(HttpServletRequest request,HttpServletResponse response,Model model){
		String id=(String) request.getSession().getAttribute("teacher");
		Teacher teacher=teacherService.FindTeacherInf(id);
		System.out.println(teacher);
		model.addAttribute("Tinf", teacher);
		return "Tinf";
	}
	
	//老师删除课题
	@RequestMapping("DeleteTmanageketi.do")
	public String DeleteProjects(String delete){
		teacherService.DeleteProjects(delete);
		return "redirect:Tmanageketi.do";
	}
	
	//提交课题
	@RequestMapping("InsertProject.do")
	public String InsertProject(Project project){
		System.out.println("project"+project.getCno());
		String cnoString=teacherService.SelectProjectB(project.getCno());
		String bnoString=teacherService.SelectProjectS(project.getCno());
		if(cnoString!=null||bnoString!=null){
			return "Taddketichongfu";
		}else {
			teacherService.InsertProject(project);
			System.out.println("aaaa");
			return "TaddketiSuccess";
		}
	}
	
	//查看自己课题的选题结果
	@RequestMapping("ManageResult.do")
	public String SelectProject(String SchooseKe){
		teacherService.SelectProject(SchooseKe);
		return "ManageSuccess";
	}
	
	//管理学生
	@RequestMapping("ManageStudent.do")
	public String DeleteStudent(String deleteS){
		teacherService.DeleteStudent(deleteS);
		return "TDeleteStudent";
	}
	
	//更新个人信息
	@RequestMapping("UpdateTea.do")
	public String UpdateTeachers(Teacher teacher){
		teacherService.UpdateTeacher(teacher);
		return "redirect:Tinf.do";
	}
}
