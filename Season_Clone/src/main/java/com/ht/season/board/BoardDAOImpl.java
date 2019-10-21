package com.ht.season.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository // 현재 클래스를 DAO bean으로 등록
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlsession;
	
	// 게시글 작성
	@Override
	public void create(BoardDTO dto) throws Exception {
		sqlsession.insert("board.insert",dto);
	}
	// 게시글 상세보기
	@Override
	public BoardDTO read(int bno) throws Exception {
		return sqlsession.selectOne("board.view",bno);
	}

	// 게시글 수정
	@Override
	public void update(BoardDTO dto) throws Exception {
		sqlsession.update("board.updateArticle",dto);
	}
	//게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		sqlsession.delete("board.deleteArticle",bno);
	}
	//게시글 전체 목록
	@Override
	public List<BoardDTO> listAll() throws Exception {
		return sqlsession.selectList("board.listAll");
	}

}
