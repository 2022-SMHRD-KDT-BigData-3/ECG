package kr.two.bshop;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.two.entity.BookVO;
import kr.two.entity.DiaryVO;
import kr.two.entity.ExerVO;
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
	public String register(MemberVO vo) {

		return "register";
	}

	@PostMapping("/memberinsert.do")
	public String memberInsert(MemberVO vo) { // title, content, writer -> 파라메터수집
		projectMapper.memberinsert(vo); // 등록
		System.out.println("회원가입성공");
		return "redirect:/login.do";
	}

	@RequestMapping("/edit.do")
	public String edit(Model model, MemberVO vo) {
		System.out.println("컨트럴로넘어옴");
		vo = projectMapper.edit(vo);
		model.addAttribute("vo", vo);
		System.out.println("넘어감");
		return "chart";
	}
	// 로그인 서비스
	@PostMapping("/loginservice.do")
	public String loginservice(HttpSession session, MemberVO vo, Model model) {
		
		   vo = projectMapper.login(vo);
		 		
		   List<DiaryVO> cl = projectMapper.chartlist(vo);
		   
		   List<DiaryVO> cs = projectMapper.chartselect(vo);
		   List<DiaryVO> cs2 = projectMapper.chartselect2(vo);
		   
		   List<DiaryVO> dvo = new ArrayList<DiaryVO>();
		   
		   if(cl.size() != 0) {
			   for (int i = 0; i < cl.size(); i++) {   
			         String date = cl.get(i).getCheckdate();
			         date = date.substring(5, 10);
			         cl.get(i).setCheckdate(date);
			         dvo.add(cl.get(i));
			   }
		   }
	   
		   List<DiaryVO> dvo1 = new ArrayList<DiaryVO>();
		   List<DiaryVO> dvo2 = new ArrayList<DiaryVO>();
		   
		   int cal1 = 0; int cal2 = 0;

		   for (int i = 0; i < cs.size(); i++) {   
		      if (i == 0) {
		         for (int j = 0; j < cs.size(); j++) {   
		            cal1 += cs.get(j).getCal();
		         }
		      }
		      cs.get(0).setCal(cal1);   
		      
		      String date = cs.get(i).getCheckdate();
		      date = date.substring(5, 10);
		      cs.get(i).setCheckdate(date);
		      
		      dvo1.add(cs.get(i));         
		   }
		   
		   for (int i = 0; i < cs2.size(); i++) {   
		      if (i == 0) {
		         for (int j = 0; j < cs2.size(); j++) {   
		            cal2 += cs2.get(j).getCal();
		         }
		      }
		      cs2.get(0).setCal(cal2);
		      
		      String date = cs2.get(i).getCheckdate();
		      date = date.substring(5, 10);
		      cs2.get(i).setCheckdate(date);
		      
		      dvo2.add(cs2.get(i));         
		   }
		         
		
		   model.addAttribute("dvo", dvo);   
		   model.addAttribute("dvo1", dvo1);
		   model.addAttribute("dvo2", dvo2);
		  
		   session.setAttribute("vo", vo);
		   
		return "chart";

	}
	// 운동리스트 서비스
	@RequestMapping("/listpick.do")

	public String listpick(Model model, int Choose,String danger, int age,String id,int weight) {

		List<String> mvo = new ArrayList<String>();

		System.out.println("위험예측도"+danger);
		

		for (int i = 0; i < 3; i++) {
			List<String> data = projectMapper.exerlist(Choose, i + 1);	
				mvo.add(data.get(i));		
		}
		MemberVO vo = new MemberVO();
		vo.setAge(age);
		vo.setWeight(weight);
		vo.setId(id);
	
		model.addAttribute("vo",vo);
		model.addAttribute("danger", danger);
		model.addAttribute("mvo", mvo);
		return "watch2";
	}

	@GetMapping("/diaryinsert.do")
	public String diaryinsert(DiaryVO vo) {
		System.out.println("들어옴");
		projectMapper.diaryinsert(vo);
		System.out.println("실행됨");
		return "watchservice.do";
	}
	
@GetMapping("/diaryslect.do")
	public String diaryselect(Model model, String id, String checkdate) {

		DiaryVO vo = projectMapper.diaryselect(id,checkdate);
		model.addAttribute("dvo", vo);
		
		return "calendar";
	}
	
@RequestMapping("/watchservice.do")
	public String watchservice(Model model) {

		MemberVO vo = new MemberVO();
		vo.setId("a");
		vo.setPw("a");
		vo.setNick("김홍석");
		vo.setHeight(175);
		vo.setWeight(77);
		vo.setAge(29);
	
		model.addAttribute("vo", vo);
		
		return "watch1";

	}
@RequestMapping("/diary.do")
public String diary() {
	return "calendar";
}
@RequestMapping("/logout.do")
public String logout(HttpSession session, Model model) {
	session.invalidate();
	
	return "login";
}
@RequestMapping("/editpagin.do")
public String editpaging() {
	
	return "edit";
}
@RequestMapping("/chart.do")
public String chart() {
	return "chart";
}
@PostMapping("/updateservice.do")
public String updateservice(MemberVO vo, String pw1,HttpSession session) {
	System.out.println("입력"+pw1);
		if(vo.getPw().equals(pw1)) {
			System.out.println("성공");
			projectMapper.updateservice(vo);
			vo = projectMapper.login(vo);
			session.setAttribute("vo", vo);
			return "chart";
		
		}else
			System.out.println("실패");		
	return "edit";
	
}
}

