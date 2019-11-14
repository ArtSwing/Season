package com.ht.season.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO boardDao;
	
	//게시글 쓰기
	
	@Override
	public void create(BoardDTO dto) throws Exception {
		String title = dto.getTitle();
		String content = dto.getContent();
		String spot = dto.getSpot();
		
		// XSS 공격 방지
		title = title.replace("<", "&lt;");
		title = title.replace(">", "&gt;");
		spot = spot.replace("<", "&lt;");
		spot = spot.replace(">", "&gt;");
		
		// *공백문자 처리
		title = title.replace(" ",	"&nbsp;&nbsp;");
		spot = spot.replace(" ",	"&nbsp;&nbsp;");
		// *줄바꿈 문자 처리
		content = content.replace("\n", "<br>");
		dto.setTitle(title);
		dto.setContent(content);
		dto.setSpot(spot);
		boardDao.create(dto);

	}
	
	// 게시글 상세보기
	@Override
	public BoardDTO read(int bno) throws Exception {
		return boardDao.read(bno);
	}
	// 게시글 수정
	@Override
	public void update(BoardDTO dto) throws Exception {
		boardDao.update(dto);

	}
	// 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		boardDao.delete(bno);

	}
	// 게시글 목록
	@Override
	public List<BoardDTO> listAll(Search search) throws Exception {
		return boardDao.listAll(search);
	}

	@Override
	public boolean adminCheck(HttpSession session) {
		String name = session.getAttribute("spot").toString();
		if (name == "admin") {
			return true;
		}
		return false;
	}
	
	@Override
	public int listCnt(Search search) throws Exception{
		return boardDao.listCnt(search);
	}

}
