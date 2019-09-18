package com.ht.season.member;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memberService")
public class memberServiceImpl implements memberService{

	@Resource(name="memberDAO")
	private memberDAO memberDAO;
	
	@Override
	public List<memberDTO> getMemberList(){
		return memberDAO.getMemberList();
	}
	
	
}
