package com.ht.season.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminCEOBoardController {
	
	@RequestMapping(value = "/admin/CEOBoardView/view/{cboard_id}", method = RequestMethod.GET)
	public ModelAndView CEOBoardView(@PathVariable("cboard_id") int cboard_id,
			@RequestParam("keyword")String keyword) {
		
		System.out.println("게시글 내용 : 컨트롤러 진입");
		
		// 게시글 VO 객체명 생성
		AdminBoardVO ceoBoardVO = CEOBoardService.cBoardContent(cboard_id);
		int preNum = CEOBoardService.previousPageMove(cboard_id, keyword);
		int nextNum = CEOBoardService.nextPageMove(cboard_id, keyword);
		
		// 게시글VO ModelAndView 객체에 담기
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminCEOViewBoard");
		mav.addObject("CEOBoard_view", ceoBoardVO);
		mav.addObject("preNum", preNum);
		mav.addObject("nextNum", nextNum);
		
		return mav;
	}
	}