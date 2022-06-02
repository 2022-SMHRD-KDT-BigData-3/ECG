package kr.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.book.entity.BoardVO;
import kr.book.entity.BookVO;
import kr.book.entity.MemberVO;
            //BoardDAO  // BoardDAO dao = new BoardDAO();
@Mapper // mybatis API
public interface BookMapper { // new BoardMapper();
   // DB연결을 설정파일(xml)에서 한다.
   // 1. 게시판 전체 리스트를 가져오는 메서드 정의

   public List<BookVO> bookList();

   @Select("select * from book order by num desc")
   public List<BookVO> bookListAjax();
}