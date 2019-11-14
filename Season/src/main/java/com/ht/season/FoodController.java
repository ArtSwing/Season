package com.ht.season;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.board.BoardDTO;
import com.ht.season.food.foodDTO;
import com.ht.season.food.foodService;

@Controller
public class FoodController {
	@Inject
	foodService fd;

	@RequestMapping("/food")
	public ModelAndView food(@ModelAttribute foodDTO vo) {
		List<foodDTO> vo2 = fd.viewFood(vo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foodList");
		mav.addObject("list", vo2);
		return mav;
	}

	@RequestMapping("/insertFood")
	public ModelAndView foodinsert() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("foodInsert");
		return mav;
	}
	
	@RequestMapping(value = "insertFoodOK", method = RequestMethod.POST)
	public String insert(@ModelAttribute foodDTO dto) throws Exception {
		fd.create(dto);
		return "redirect:food";
	}

}
