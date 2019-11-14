package com.ht.season.stock;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ht.season.member.memberDTO;

@Service
public class stockServiceImpl implements stockService {
	
	@Inject
	stockDAO stockDao;

	@Override
	public List<stockDTO> viewStock(stockDTO vo) {
		if(vo.getSpot().equals("all")){
			return stockDao.viewStockAll(vo);
		}
		return stockDao.viewStock(vo);
	}
	
	@Override
	public List<memberDTO> viewMember(memberDTO vo) {
		return stockDao.viewMember(vo);
	}
	

}
