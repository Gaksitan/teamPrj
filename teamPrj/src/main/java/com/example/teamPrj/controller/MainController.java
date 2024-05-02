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
	// 프로젝트의 규모가 커지면, 특정부분의 문제를 빠르게 찾기위해 분야별로 나눠서 컨트롤러 작성을
	@Autowired
	IBoardDao Bdao;
	
	@Autowired
	IMemberDao Mdao;
	
	@RequestMapping({"/", "/main"})
	public String root(Model model) {
		model.addAttribute("list", Bdao.getAllBoard());
		return "main";
	}
	
	@RequestMapping("/regForm")
	public String regForm() {
		return "regForm";
	}
	
	@RequestMapping("/regist")
	public String regist(@RequestParam("id") String id, @RequestParam("pw") String pw, @RequestParam("name") String name) {
		MemberDto member = new MemberDto(id, pw, name);
		Mdao.regMember(member);
		return "redirect:loginForm";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("id") String id, HttpServletRequest request) {
		if(Mdao.getMember(id) == null) {
			log.info("로그인 실패.....");
			return "loginForm";
		}
		HttpSession session = request.getSession();
		MemberDto mem = Mdao.getMember(id);
		session.setAttribute("id", mem.getId());
		session.setAttribute("pw", mem.getPw());
		session.setAttribute("name", mem.getName());
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
	
	@RequestMapping("/write") // 게시글 등록 폼
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
	public String myList(HttpServletRequest request, String writer, Model model) {
		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto)session.getAttribute("loginInfo");
		writer = dto.getId();
		model.addAttribute("list", Bdao.getMyList(writer));
		
		return "myList";
	}
	
	@RequestMapping("/receiverList")
	public String receiverList(HttpServletRequest request, String receiver, Model model) {
		HttpSession session = request.getSession();
		MemberDto dto = (MemberDto)session.getAttribute("loginInfo");
		receiver = dto.getId();
		model.addAttribute("list", Bdao.getReceiveList(receiver));
		return "receiverList";
	}
	
	
	
	
	
}
