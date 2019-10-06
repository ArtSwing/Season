package com.ht.season;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	@RequestMapping("/returnHome")
	public String login() {
		return "main";
	}

}
