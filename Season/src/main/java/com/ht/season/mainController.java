package com.ht.season;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.food.foodDTO;
import com.ht.season.food.foodService;

@Controller
public class mainController {
	@Inject
	foodService fd;
	
	@RequestMapping("/returnHome")
	public String login() {
		return "main";
	}
}
