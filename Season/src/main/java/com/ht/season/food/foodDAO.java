package com.ht.season.food;

import java.util.List;

public interface foodDAO {
	public List<foodDTO> viewFood(foodDTO vo);
	public void create(foodDTO dto) throws Exception;

}
