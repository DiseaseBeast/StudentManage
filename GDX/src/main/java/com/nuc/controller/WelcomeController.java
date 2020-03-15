package com.nuc.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nuc.model.Tourist;
import com.nuc.service.IStudentService;
import com.nuc.service.ITouristService;


/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 下午4:36:11 
* 设置welcome.jsp为默认页面
*/
@Controller
@RequestMapping("Tourist")
public class WelcomeController{
	@Resource
	private ITouristService touristService;
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	  public String index(Model model){
		model.addAttribute("Status", 0);
	    return "welcome";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public String login(Model model, String username, String password, String carlist){
		model.addAttribute("Status", 1);
		Tourist tourist = new Tourist();
		switch(carlist) {
			case "XS":
				tourist = touristService.queryTouristBySno(username);
				break;
			case "LS":
				tourist = touristService.queryTouristByTno(username);
				break;
			case "JWC":
				tourist = touristService.queryTouristByAno(username);
				break;
		}
		if(tourist != null)
		{
			model.addAttribute("UserStatus", 1);
			String passwords = tourist.getPassword();
			if(password.equals(passwords))
				model.addAttribute("PassStatus", 1);
			else
				model.addAttribute("PassStatus", 0);
		}
		else 
			model.addAttribute("UserStatus", 0);
		model.addAttribute("type", carlist);
		model.addAttribute("username", username);
	    return "welcome";
	}
}