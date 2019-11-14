package com.ht.season.food;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ht.season.board.BoardDTO;

@Repository("foodDAO")
public class foodDAOImpl implements foodDAO {
	
	
	@Inject
	private SqlSession sqlSession;
	@Override
	public List<foodDTO> viewFood(foodDTO vo) {
		return sqlSession.selectList("food.viewFood", vo);
	}
	
	@Override
	public void create(foodDTO dto) throws Exception {
		sqlSession.insert("food.insert",dto);
		sqlSession.insert("food.insertStock",dto);
	}

}
