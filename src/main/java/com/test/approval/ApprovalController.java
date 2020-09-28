package com.test.approval;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ApprovalController {
	
	@Autowired
	private ApprovalDAO dao;
	
	@RequestMapping(value = "/approvallist.action", method = { RequestMethod.GET })
	private String approvallist(HttpServletRequest request, HttpServletResponse response) {

		

	
		return "approval.approvallist";
	}
}
