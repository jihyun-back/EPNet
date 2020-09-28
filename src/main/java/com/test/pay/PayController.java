package com.test.pay;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PayController {
	
	@Autowired
	private IPayDAO dao;
	

	@RequestMapping(value = "/pay/list.action", method = { RequestMethod.GET })
	public String list(HttpServletRequest request, HttpServletResponse response , String page) {

		//게시판 목록 가져오기
		//1. 데이터 가져오기 (로그인한 사람의 seq) 
		//2. DB 작업 
		//3. DTO 반환 -> JSP 호출
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		//2.
		//조건 없는 게시판 목록 
//		List<PayDTO> list = dao.list();
		
		//페이징 
		int nowPage = 0;		//현제 페이지
		int totalCount = 0;		//총 게시물 수
		int pageSize = 10;		//한페이지에 출력할 게시물 수 
		int totalPage = 0;		//총 페이지 수 
		int begin = 0;			//rownum 시작 
		int end = 0;			//rownum 끝
		int n =0;				//루프 관련 변수 (페이지바 첫숫자)
		int loop = 0;			//루프 관련 변수 
		int blockSize = 5;		//한번에 출력될 페이지바 숫자
		
		if(page == null || page == "") {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		//총 게시물 수
		totalCount = Integer.parseInt(dao.totalCount());
//		System.out.println("totalCount::"+ totalCount);
		
		//총 페이지 수 
		totalPage = (int)Math.ceil((double)(totalCount) / pageSize);
		
		//rownum 시작 
		begin = ( (nowPage - 1) * pageSize * (-1) ) + totalCount;
		end = begin - pageSize + 1;
		
		if(end < 0) { end = 0; }
		
		map.put("begin",begin + "");
		map.put("end",end + "");
		
		System.out.println("111map.begin::"+map.get("begin"));
		System.out.println("111map.end::"+map.get("end"));
		
		//rownum 조건 > 게시판 목록 
		List<PayDTO> list = dao.list(map);
		
		//루프 제어 변수 
		loop = 1;
		
		//페이지 첫 숫자 
		n = ( (nowPage - 1) / blockSize ) * blockSize + 1;
		
		//페이징 바 
		String pagebar = "";
		
		
		
		
		
		//3.
		request.setAttribute("list", list);
		
		//JSP 호출
		return "pay.list";
	}
}
