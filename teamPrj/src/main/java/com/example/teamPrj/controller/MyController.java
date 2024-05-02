package com.example.teamPrj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.teamPrj.dao.IBoardDao;
import com.example.teamPrj.dao.IMemberDao;
import com.example.teamPrj.dto.MemberDto;

@Controller
public class MyController {
	@Autowired
	IBoardDao Bdao;
	
	@Autowired
	IMemberDao Mdao;
	
	@RequestMapping("/updateForm")
	public String updateForm() {
		return "updateForm";
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam("pw") String pw, @RequestParam("name") String name, HttpServletRequest http) {
		HttpSession session = http.getSession();
		MemberDto dto = (MemberDto) session.getAttribute("loginInfo");
		String id = dto.getId();
		
		Mdao.updateMember(pw, name, id);
		
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		session.setAttribute("name", name);
		session.setAttribute("loginInfo", Mdao.getMember(id));
		
		return "myPage";
	}
	
	
}
