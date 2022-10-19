/*
 	ReviewMapper.java
	작성자 : 정구현
	최초 생성일 : 2022-10-18
	작업내역:  2022-10-18 "reviewInsert 작성"
			2022-10-19 "getReviewList, Update 작성"

*/
package com.hdsm.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hdsm.domain.ReviewDTO;


public interface ReviewMapper {
		
	// 상퓸평 등록
	public void reviewInsert(ReviewDTO dto);
	
	// 상품평 리스트
	public List<ReviewDTO> getReviewList(@Param("pid") String pid);
	
	// 상품평 수정
	public int reviewUpdate(ReviewDTO dto);
	
	// 상품평 삭제
	public int reviewDelete(@Param("rno") int rno);
	
	// 총 상품평 수
	public int getReviewCount(@Param("pid") String pid);
}