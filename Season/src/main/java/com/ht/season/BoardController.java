package com.ht.season;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ht.season.board.BoardDTO;
import com.ht.season.board.BoardService;

@Controller // 현재 클래스를 컨트롤러 빈으로 등록
public class BoardController {
	
	// 의존관계 주입 => BoardServiceImpl 생성
	// Ioc 의존관계 역전
	@Inject
	BoardService boardService;
	
	// 게시글목록
	@RequestMapping("sug")
	public ModelAndView sug() throws Exception {
		List<BoardDTO> sug = boardService.listAll();
		// ModelAndView - 모델과 뷰
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sug"); // 뷰를 sug.jsp로 설정
		mav.addObject("sug",sug);  // 화면에 뿌려질 내용을 오브젝트에 담아서 넘김
		return mav; // sug.jsp로 sug가 전달됨
	}
	
	// 게시글 작성화면
	
	@RequestMapping(value="sugwrite", method=RequestMethod.GET)
	public String write() {
		return "write"; // write.jsp로 이동
	}
	//게시글 작성 처리
	
	@RequestMapping(value="suginsert", method=RequestMethod.POST)
	public String insert(@ModelAttribute BoardDTO dto) throws Exception{
		boardService.create(dto);
		return "redirect:sug";
	}
	
	
	
	// 게시글 상세내용 조회
	@RequestMapping(value="sugview", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int bno,HttpSession session) throws Exception {
		boolean admin = boardService.adminCheck(session); // admin만 상세게시글 볼수 있게
		ModelAndView mav = new ModelAndView(); // view이름
		mav.setViewName("view"); 
		mav.addObject("dto",boardService.read(bno));
		return mav;
		
	}
	
	// 게시글 수정
	@RequestMapping(value="sugupdate", method=RequestMethod.POST)
	public String update(@ModelAttribute BoardDTO dto) throws Exception {
		boardService.update(dto);
		return "redirect:sug";
	}
	
	// 게시글 삭제
	
	@RequestMapping("sugdelete")
	public String delete(@RequestParam int bno) throws Exception {
		boardService.delete(bno);
		return "redirect:sug";
	}
	
}






















