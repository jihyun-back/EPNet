package com.test.pay;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDAO implements IPayDAO{

   //BoardController -> BoardDAO -> sqlSessionTemplate
   @Autowired
   private SqlSessionTemplate template;
	   
	   
//	@Override
//	public List<PayDTO> list() {
//		//글쓰기 목록 
//		return template.selectList("pay.list");
//	}


	@Override
	public String totalCount() {
		// 총 게시물 수
		return template.selectOne("pay.totalCount");
	}


	@Override
	public List<PayDTO> list(HashMap<String, String> map) {
		// rownum 사용 
		System.out.println("222map.begin::"+map.get("begin"));
		System.out.println("222map.end::"+map.get("end"));
		
		return template.selectList("pay.list",map);
	}
	
	

}
