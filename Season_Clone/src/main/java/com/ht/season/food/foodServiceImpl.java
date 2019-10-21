package com.ht.season.food;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class foodServiceImpl implements foodService {
	@Inject
	foodDAO foodDao;
	

	@Override
	public List<foodDTO> viewFood(foodDTO vo) {
		return foodDao.viewFood(vo);
	}
}
