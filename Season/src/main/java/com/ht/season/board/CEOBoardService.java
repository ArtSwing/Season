package com.ht.season.board;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class CEOBoardService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private AdminDaoInterface adminDao;
	
	// 페이지 마다 보여줄 게시글의 갯수
	private static final int CEOBOARD_COUNT_PER_PAGE = 10;
	// 게시글 리스트 불러는 메서드
	public AdminBoardListVO cBoardContentList(HttpServletRequest request, String keyword) {
		
		adminDao = sqlSession.getMapper(AdminDaoInterface.class);
		String pageParam = request.getParameter("page"); // keyword와 같이 param 이지만 다르게 받음
		int currentPageNum = 1;
		
		// int형으로 안 받아지기 때문에 String 값으로 받은 뒤 형변환을 해주었다.
		if(pageParam != null) {
			currentPageNum = Integer.parseInt(pageParam);
		}
		// 총 페이지 수
		int ceoBoardTotalCount = 0;
		List<AdminBoardVO> ceoBoardList = null;
		int firstRow = 0;
		
		System.out.println("서비스는 나오지?");
		
		try{
			// 전체 게시글 구하기
			ceoBoardTotalCount = adminDao.CEOBOardTotalCount(keyword);
			
			if(ceoBoardTotalCount > 0) {
				// mysql은 0열부터 시작 -1을 해줌
				firstRow = (currentPageNum - 1) * CEOBOARD_COUNT_PER_PAGE;
				ceoBoardList = adminDao.contentList(firstRow, keyword);
				
				System.out.println("1" + ceoBoardList);
				
			} else { // 없을 경우
				ceoBoardList = Collections.emptyList();
				System.out.println("2" + ceoBoardList);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 페이지 수(나눌때 정확한 값을 얻기 위해 double로 형변환)
		int ceoBoardPageTotalCount = (int) Math.ceil(ceoBoardTotalCount / (double) CEOBOARD_COUNT_PER_PAGE);
		System.out.println("CEOboardService 진입 - 페이지 수 :" + ceoBoardPageTotalCount);
		
		return new AdminBoardListVO(ceoBoardTotalCount, currentPageNum, ceoBoardList, ceoBoardPageTotalCount, CEOBOARD_COUNT_PER_PAGE, firstRow);
	}

}
