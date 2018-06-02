package nyist.net.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nyist.net.po.Root;
import nyist.net.po.StuChooseProject;
import nyist.net.po.Student;
import nyist.net.po.Teacher;
import nyist.net.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller 
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping("LoginCheck.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

			request.setCharacterEncoding("UTF-8");
			String id=request.getParameter("id");
			String password=request.getParameter("password");
			System.out.println(id+" "+password);
			String select=request.getParameter("select");
			ModelAndView maAndView=new ModelAndView();
			if(select.equals("student")){
				Student student=loginService.FindStudenById(id);
				if (student==null) {
					maAndView.setViewName("failure");
					return maAndView;
				}
				else if(student.getId().equals(id)&&student.getPassword().equals(password)){
					request.getSession().setAttribute("student", id);
					maAndView.setViewName("student");
					return maAndView;
				}
				else {
					maAndView.setViewName("failure");
					return maAndView;
				}
			}
			else if (select.equals("teacher")) {
				Teacher teacher=loginService.FindTeacherById(id);
				if (teacher==null) {
					maAndView.setViewName("failure");
					return maAndView;
				}
				else if(teacher.getId().equals(id)&&teacher.getPassword().equals(password)){
					request.getSession().setAttribute("teacher", id);
					maAndView.setViewName("teacher");
					return maAndView;
				}
				else {
					maAndView.setViewName("failure");
					return maAndView;
				}
			}
			else{
				Root root=loginService.FindRootById(id);
				if (root==null) {
					maAndView.setViewName("failure");
					return maAndView;
				}
				else if (root.getzId().equals(id)&&root.getZPassword().equals(password)) {
					System.out.println("123");
					request.getSession().setAttribute("root", id);
					maAndView.setViewName("root");
					return maAndView;
				}
				else {
					System.out.println("123456");
					maAndView.setViewName("failure");
					return maAndView;
				}
			}
	}
	
/*	@RequestMapping("LoginCheck.do")
	public String LoginCheck(String id,String password,String select,Model model){
		if(select.equals("student")){
			Student student=loginService.FindStudenById(id);
			if(student==null){
				return "failure";
			}else if(student.getId().equals(id)&&student.getPassword().equals(password)){
				model.addAttribute("StudentId", id);
				return "student";
			}
			else {
				return "failure";
			}
		}
		else if (select.equals("teacher")) {
			Teacher teacher=loginService.FindTeacherById(id);
			if(teacher==null){
				return "failure";
			}else if(teacher.getId().equals(id)&&teacher.getPassword().equals(password)){
				model.addAttribute("TeacherId", id);	
				return "teacher";
			}
			else {
				return "failure";
			}
		}
		else {
			Root root=loginService.FindRootById(id);
			if(root==null){
				return "failure";
			}else if(root.getzId().equals(id)&&root.getZPassword().equals(password)){
					return "root";
			}
			else {
				return "failure";
			}
		}
	}*/
}

