package com.ht.season.stock;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ht.season.member.memberDTO;


@Repository("stockDAO")
public class stockDAOImpl implements stockDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<stockDTO> viewStock(stockDTO vo) {
		return sqlSession.selectList("stock.viewStock", vo);
	}
	@Override
	public List<memberDTO> viewMember(memberDTO vo) {
		return sqlSession.selectList("member.viewMemberList", vo);
	}
	@Override
	public List<stockDTO> viewStockAll(stockDTO vo) {
		return sqlSession.selectList("stock.viewStockAll", vo);
	}
}
