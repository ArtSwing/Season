package com.ht.season;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ht.season.member.memberService;

@Controller
public class loginController {
	@Autowired
	memberService ms;

	@RequestMapping("/login")
	public String loginCheck(Model model) {
		model.addAttribute("members",ms.getMemberList());
		return "/main";
	}
}
