package com.ht.season.board;

import java.util.List;

public interface BoardDAO {
	// 게시글작성
	public void create(BoardDTO dto) throws Exception;
	// 게시글 상세보기
	public BoardDTO read(int bno) throws Exception;
	// 게시글 수정
	public void update(BoardDTO dto) throws Exception;
	// 게시글 삭제
	public void delete(int bno) throws Exception;
	// 게시글 전체 목록
	public List<BoardDTO> listAll(Search search) throws Exception;
	
	public int listCnt(Search search) throws Exception;

}
