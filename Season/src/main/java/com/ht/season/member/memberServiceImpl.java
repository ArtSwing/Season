package com.ht.season.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberService{

	@Inject
	memberDAO memberDao;
	
	@Override
	public boolean loginCheck(memberDTO vo, HttpSession session) {
		boolean result = memberDao.loginCheck(vo);
		if(result) {
			memberDTO vo2 = viewMember(vo);
			session.setAttribute("identify",vo2.getIdentify());
			session.setAttribute("spot",vo2.getSpot());
		}
		return result;
	}
	@Override
	public memberDTO viewMember(memberDTO vo) {
		return memberDao.viewMember(vo);
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
