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
		return "edit";
	}
	// 로그인 서비스
	@PostMapping("/loginservice.do")
	public String loginservice(HttpSession session, MemberVO vo) {
		vo = projectMapper.login(vo);
		session.setAttribute("vo", vo);
		return "calendar";
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
	
		projectMapper.diaryinsert(vo);

		return "watch1";
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
	
}
