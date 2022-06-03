package kr.book.bshop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.book.entity.BookVO;
import kr.book.entity.MemberVO;
import kr.book.mapper.BookMapper;

@Controller
public class ProjectController {
	@Autowired
	private BookMapper BookMapper;
	// http://127.0.0.1:8081/controller

	@RequestMapping("/login.do")
	public String bookList(Model model) {
		return "login"; 
	}
	@RequestMapping("/register.do")
	public String register(MemberVO vo){
	return "register";
	}
	
	@PostMapping("/memberinsert.do")
	public String boardInsert(MemberVO vo) { // title, content, writer -> 파라메터수집
	System.out.println("id : "+vo.getId());
	System.out.println("pw : "+vo.getPw());
	System.out.println("nick : "+vo.getNick());
	System.out.println("키 : "+vo.getHeight());
	System.out.println("몸무게 : "+vo.getWeight());
	System.out.println("강도 : "+vo.getStrong());
	BookMapper.memberinsert(vo); // 등록
	return "redirect:/login.do";
	   }
	
	@RequestMapping("/bookListAjax.do")
	public @ResponseBody List<BookVO> bookListAjax(){
	List<BookVO> list = BookMapper.bookListAjax();
	return list;
		}
	}

