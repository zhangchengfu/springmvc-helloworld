package com.laozhang.springmvc.annotation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.laozhang.springmvc.entity.User;

@RequestMapping(value = "/user")
@Controller
public class UserController {
	
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView addUser() {
		String result = "add user";
		System.out.println(result);
		return new ModelAndView("jquery", "result", result);
	}
	
	@RequestMapping(value = "/addUserjson", method = RequestMethod.POST)
	@ResponseBody
	public User addUserjson(@RequestBody User user, HttpServletRequest request, HttpServletResponse response) {
		return user;
	}
}
