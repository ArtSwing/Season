package com.ht.season.food;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ht.season.board.BoardDTO;

@Service
public class foodServiceImpl implements foodService {
	@Inject
	foodDAO foodDao;
	

	@Override
	public List<foodDTO> viewFood(foodDTO vo) {
		return foodDao.viewFood(vo);
	}
	
	@Override
	public void create(foodDTO dto) throws Exception {
		String name = dto.getName();
		String life = dto.getLife();
		String country = dto.getCountry();
		String price = dto.getPrice();
				
		// *공백문자 처리
		name = name.replace(" ",	"&nbsp;&nbsp;");
		life = life.replace(" ",	"&nbsp;&nbsp;");
		country = country.replace(" ",	"&nbsp;&nbsp;");
		price = price.replace(" ",	"&nbsp;&nbsp;");

		dto.setName(name);
		dto.setLife(life);
		dto.setCountry(country);
		dto.setPrice(price);
		foodDao.create(dto);
		
		

	}
}
