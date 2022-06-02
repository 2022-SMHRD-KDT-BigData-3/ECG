package kr.book.bshop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.book.entity.BookVO;
import kr.book.mapper.BookMapper;

@Controller
public class BookController {
	@Autowired
	private BookMapper BookMapper;
	// http://127.0.0.1:8081/controller

	@RequestMapping("/login.do")
	public String bookList(Model model) {

		return "login"; // WEB-INF/views/bookList.jsp
	}
	@RequestMapping("/bookListAjax.do")
		public @ResponseBody List<BookVO> bookListAjax(){
			List<BookVO> list = BookMapper.bookListAjax();
			return list;
		}
	}

