package com.ht.season.board;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface BoardService {
	// 게시글작성
	public void create(BoardDTO dto) throws Exception;
	// 게시글 상세보기
	public BoardDTO read(int bno) throws Exception;
	// 게시글 수정
	public void update(BoardDTO dto) throws Exception;
	// 게시글 삭제
	public void delete(int bno) throws Exception;
	// 게시글 전체 목록
	public List<BoardDTO> listAll() throws Exception;
	// 게시글 admincheck
	public boolean adminCheck(HttpSession session);
}
