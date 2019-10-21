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
	@RequestMapping("/food")
	public ModelAndView food(@ModelAttribute foodDTO vo) {
		List<foodDTO> vo2 = fd.viewFood(vo);		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foodList");
		mav.addObject("list",vo2);
		return mav;
	}
}
