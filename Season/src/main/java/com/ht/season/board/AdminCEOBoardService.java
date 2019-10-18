package com.ht.season.board;

import javax.servlet.http.HttpServletRequest;

public class AdminCEOBoardService {
	// 게시글 내용 보기 메서드
		public AdminBoardVO cBoardContent(int cboard_id) {
			System.out.println("서비스단 게시글 번호" + cboard_id);
			adminDao = sqlSession.getMapper(AdminDaoInterface.class);
			return adminDao.contentView(cboard_id);
		}
		
		// view 페이지에서 페이지 이동
		public int previousPageMove(int cboard_id, String keyword) {
	     	adminDao = sqlSession.getMapper(AdminDaoInterface.class);
			// 첫번째 게시글 0
			int num = 0;
			try {
				num = adminDao.getPreviousPage(cboard_id, keyword);	
			} catch (Exception e) {
				e.printStackTrace();
			}
			return num;
		}

		public int nextPageMove(int cboard_id, String keyword) {
			adminDao = sqlSession.getMapper(AdminDaoInterface.class);
			int num = 0;
			try {
				num = adminDao.getNextPage(cboard_id, keyword);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return num;
		}
 //밑에꺼 주석처리하면 CEOBoardService에서 에러남 왜그런지 모르겠음 -유한빈 2019.10.18. 새벽2시에 의문점
		public AdminBoardListVO cBoardContentList(HttpServletRequest request, String keyword) {
			// TODO Auto-generated method stub
			return null;
		}

}
