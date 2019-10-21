package com.ht.season.member;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface memberDAO {
	public boolean loginCheck(memberDTO vo);
	
	public memberDTO viewMember(memberDTO vo);
	
	public void logout(HttpSession session);
}
