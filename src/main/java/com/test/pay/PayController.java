package com.test.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PayController {

	@RequestMapping(value = "/pay/test.action", method = { RequestMethod.GET })
	public String test(HttpServletRequest request, HttpServletResponse response) {

		

		return "pay.test";
	}
}
