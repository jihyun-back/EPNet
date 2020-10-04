package com.test.approval;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApprovalController {
	
	@Autowired
	private IApproval dao;
	
	@RequestMapping(value = "/approvallist.action", method = { RequestMethod.GET })
	private String approvallist(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
		//test용 나중엔 지울것
		if (session.getAttribute("seq") == null) {
			session.setAttribute("seq", "1");
		}
		
		String seq = (String)session.getAttribute("seq");
		String type = (String)request.getAttribute("type");
		if(type == null) {
			type = "전체";
		}
		
		int totalcount = dao.getTotalCount(seq);
		HashMap<String, String> hash = new HashMap<String, String>();
		hash.put("seq", seq);
		hash.put("type", type);
		List <ApprovalDTO> list = dao.list(hash);
		
		
		request.setAttribute("totalcount", totalcount);
		request.setAttribute("list", list);
		
		return "approval.approvallist";
	}
}
