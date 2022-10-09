package com.hdsm.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.hdsm.domain.Criteria;
import com.hdsm.domain.ProductVO;
import com.hdsm.domain.ThumbnailColorVO;
import com.hdsm.domain.ThumbnailVO;


public interface ProductMapper {

	//카테고리에 해당하는 물건목록 가져오기
	public List<ProductVO> getList(ProductVO product);
	
	//카테고리물건을 페이징해서 물건목록 가져오기
	//여기서 Param은 xml로 인자를 2개이상 줄때는 class 속성값 이름만 줘서는 못 알아 먹어서 cri.amount 이런식으로 쓰기위해 @Param을 씀
	public List<ThumbnailVO> getListWithPaging(@Param("vo") ProductVO vo,@Param("cri") Criteria cri);
	
	//물건들의 이미지, 이미지썸네일 2개를 객체로 가져오기 위함
	public List<ThumbnailColorVO> getColorList(List<String> productIDs);
}
