package kr.two.bshop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.two.entity.BookVO;
import kr.two.entity.MemberVO;
import kr.two.mapper.ProjectMapper;

@Controller
public class ProjectController {
	@Autowired
	private ProjectMapper projectMapper;
	// http://127.0.0.1:8081/controller

	@RequestMapping("/login.do")
	public String login(Model model) {
		return "login"; 
	}
	@RequestMapping("/register.do")
	public String register(MemberVO vo){

	return "register";
	}
	
	@PostMapping("/memberinsert.do")
	public String memberInsert(MemberVO vo) { // title, content, writer -> 파라메터수집
	projectMapper.memberinsert(vo); // 등록
	System.out.println("회원가입성공");
	return "redirect:/login.do";
	   }
	@PostMapping("/loginservice.do")
	public String loginservice(Model model,MemberVO vo) {
	vo = projectMapper.login(vo);
	model.addAttribute("vo", vo);
	return "main";
	}
	
		}


