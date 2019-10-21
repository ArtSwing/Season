package com.ht.season;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.member.memberDTO;
import com.ht.season.member.memberService;

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	@Inject
	memberService ms;
	
	@RequestMapping("/login")
	public String login() {
		return "home";
	}
	
	@RequestMapping("/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute memberDTO vo, HttpSession session) {
		boolean result = ms.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("main");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("home");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		ms.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg","logout");
		return mav;
	}
}
