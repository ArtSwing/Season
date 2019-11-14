package com.ht.season;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.member.memberDTO;
import com.ht.season.stock.stockDTO;
import com.ht.season.stock.stockService;

@Controller
public class stockController {
	
	@Inject
	stockService sd;
	
	@RequestMapping("/stock")
	public ModelAndView stock(@RequestParam(required = false, defaultValue = "all") String mid, @ModelAttribute stockDTO vo,@ModelAttribute memberDTO mvo) throws UnsupportedEncodingException {   // 비어있는 DTO (아무것도없음)
		String spot = URLDecoder.decode(mid,"UTF-8");
		vo.setSpot(spot);
		List<stockDTO> vo2 = sd.viewStock(vo);	
		List<memberDTO> mvo2 = sd.viewMember(mvo);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("stockList"); // jsp이름 타고감
		mav.addObject("list",vo2);  // view에 뿌려질려고 담아준 변수
		mav.addObject("spotlist",mvo2);  
		return mav;
	}

}
