package com.ht.season.food;

import java.util.List;

public interface foodService {
	public List<foodDTO> viewFood(foodDTO vo);
	
	public void create(foodDTO dto) throws Exception;
}
