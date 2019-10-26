package com.ht.season.member;

import javax.servlet.http.HttpSession;

import com.ht.season.member.memberDTO;

public interface memberService {
	public boolean loginCheck(memberDTO vo, HttpSession session);

	public memberDTO viewMember(memberDTO vo);
	
	public void logout(HttpSession session);

}
