package com.example.teamPrj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.teamPrj.dao.IBoardDao;
import com.example.teamPrj.dao.IMemberDao;
import com.example.teamPrj.dto.BoardDto;
import com.example.teamPrj.dto.MemberDto;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class MainController {
	
	@Autowired
	IBoardDao Bdao;
	
	@Autowired
	IMemberDao Mdao;
	
	@RequestMapping({"/", "/main"})
	public String root() {
		return "main";
	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("list", Bdao.getAllBoard());
		return "list";
	}
	
	@RequestMapping("/regForm")
	public String regForm() {
		return "regForm";
	}
	
	@RequestMapping("/regist")
	public String regist(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("name") String name) {
		MemberDto member = new MemberDto(id, pw, name);
		return "redirect:loginForm";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("id") String id, HttpServletRequest request) {
		if(Mdao.getMember(id).equals(null)) {
			log.info("로그인 실패.....");
			return "loginForm";
		}
		HttpSession session = request.getSession();
		session.setAttribute("loginInfo", Mdao.getMember(id));
		
		log.info("로그인 성공......");
		return "redirect:main";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/registBoard")
	public String registBoard(@RequestParam("title") String title, @RequestParam("content") String content, @RequestParam("writer") String writer, @RequestParam("receiver") String receiver) {
		BoardDto board = new BoardDto();
		board.setTitle(title);
		board.setContent(content);
		board.setWriter(writer);
		board.setReceiver(receiver);
		Bdao.regBoard(board);
		return "redirect:list";
	}
	
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("bno") String bno, Model model) {
		int bno_ = Integer.parseInt(bno);
		model.addAttribute("board", Bdao.getBoard(bno_));
		return "detail";
	}
	
	@RequestMapping("/myPage")
	public String myPage() {
		
		
		return "myPage";
	}
	
	@RequestMapping("/myList")
	public String myList(@RequestParam("id") String id) {
		
		
		return "myList";
	}
	
	@RequestMapping("/receiverList")
	public String receiverList() {
		
		
		
		return "receiverList";
	}
	
	
	
	
	
}
