package nyist.net.controller;

import nyist.net.po.User;
import nyist.net.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/input.do")
	public String input(){
		return "input";
	}
	
	@RequestMapping("findUserById.do")
	public String findUserById(int id,Model model,String select){
		User user=userService.findUserById(id);
		System.out.println(id);
		System.out.println(select);
		model.addAttribute("user", user);
		return "success";
	}
}
