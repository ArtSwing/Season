package com.ht.season.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AdminDaoInterface {

	List<AdminBoardVO> contentList(int firstRow, String keyword); // CEO 게시판 리스트
	int CEOWriteReg(AdminBoardVO ceoBoardVO); // CEO 게시판 게시글 등록
	AdminBoardVO contentView(int cboard_id); // 게시글 삭제하기
	int contentModi(AdminBoardVO ceoVO); // 게시글 수정하기

		/* CEO게시판 페이징 처리 */
	int CEOBOardTotalCount(String keyword); //총 페이지 갯수
	int getPreviousPage(@Param("cboard_id") int cboard_id, @Param("keyword") String keyword); // 이전페이지
	int getNextPage(@Param("cboard_id") int cboard_id, @Param("keyword") String keyword); // 다음페이지
//	/* CEO게시판 댓글 (미구현) */
//	List<AdminBoardReplyVO> getReplyList(int cboard_id); // CEO게시판 댓글 불러오기
//	int CEOBoardReplyInsert(AdminBoardReplyVO replyVO); // 댓글 작성
//	int CEOBoardReplyDelete(int cboard_reply_id); // 댓글 삭제
//	int CEOBoardReplyModify(AdminBoardReplyVO replyVO); //댓글 수정
	
	
}
