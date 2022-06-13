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

	@PostMapping("/loginservice.do")
	public String loginservice(Model model, MemberVO vo) {
		System.out.println("너냐?");
		vo = projectMapper.login(vo);
		model.addAttribute("vo", vo);
		
		return "watch1";
	}

	@RequestMapping("/listpick.do")
	public String listpick(Model model, int Choose, int num, int type ,String danger) {
		List<String> mvo = new ArrayList<String>();
		System.out.println("ddddd"+danger);
		// Choose = 선택한 운동종류 , num = 셀렉트할 횟수, type 운동종류
		for (int i = 0; i < num; i++) {
			List<String> data = projectMapper.exerlist(Choose, i + 1, type);
			// data 크기만큼 mvo에 넣어준다
			for (int a = 0; a < data.size(); a++) {
				mvo.add(data.get(a));
			}
		}
		model.addAttribute("danger", danger);
		model.addAttribute("mvo", mvo);
		return "watch2";
	}

	@GetMapping("/diaryinsert.do")
	public String diaryinsert() {
		
		return "watch";
	}
}
