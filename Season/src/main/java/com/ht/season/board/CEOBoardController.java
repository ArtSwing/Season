package com.ht.season.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.board.AdminBoardListVO;
@Controller
public class CEOBoardController {
	@Autowired
	private AdminCEOBoardService CEOBoardService;
	
	// CEO게시판 게시글 리스트
	@RequestMapping(value = "/admin/CEOBoard", method = RequestMethod.GET)
	public ModelAndView adminCEOBoard(HttpServletRequest request,
			@RequestParam("keyword")String keyword) {
		
		AdminBoardListVO CEOBoardList = CEOBoardService.cBoardContentList(request, keyword);
		System.out.println("컨트롤러 : " + CEOBoardList);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminCEOBoard");
		mav.addObject("CEOBoard", CEOBoardList); // 유저게시물
		mav.addObject("ceoPageNum", CEOBoardList.getCurrentPageNum()); // 페이지 번호
		
		return mav;
	}

}
