package com.baedang.view.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UtilController {
	
	@RequestMapping(value="/calculate.do", method = RequestMethod.GET)
	public String loginView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "util/calculate";
	}
	
	@RequestMapping(value="rate_table.do", method = RequestMethod.GET)
	public String rate_table(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "util/rate_table";
	}
	
	@RequestMapping(value="rate_table2.do", method = RequestMethod.GET)
	public String rate_table2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "util/rate_table2";
	}
	
	@RequestMapping(value="projectMember.do", method = RequestMethod.GET)
	public String projectMember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "projectMember/projectMember";
	}
	
}
