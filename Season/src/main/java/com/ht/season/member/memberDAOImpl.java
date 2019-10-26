package com.ht.season.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("memberDAO")
public class memberDAOImpl implements memberDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public boolean loginCheck(memberDTO vo) {
		String name = sqlSession.selectOne("member.loginCheck", vo);
		return(name == null) ? false: true;
	}
	
	@Override
	public memberDTO viewMember(memberDTO vo) {
		return sqlSession.selectOne("member.viewMember", vo);
	}
	
	@Override
	public void logout(HttpSession session) {
		
	}
	
	
	

}
