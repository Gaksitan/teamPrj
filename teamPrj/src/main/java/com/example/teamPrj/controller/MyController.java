package com.example.teamPrj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class MyController {

	
	
	@RequestMapping("/header")
	public void root() {
	}
	@RequestMapping("/main")
	public void root1() {
	}
	@RequestMapping("/write")
	public void root2() {
	}
}
