package kr.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.book.entity.BoardVO;
import kr.book.entity.BookVO;
import kr.book.entity.MemberVO;
            //BoardDAO  // BoardDAO dao = new BoardDAO();
@Mapper // mybatis API
public interface BookMapper { // new BoardMapper();
   // DB연결을 설정파일(xml)에서 한다.

   public List<BookVO> bookList();

   @Select("select * from book order by num desc")
   public List<BookVO> bookListAjax();
   @Insert("insert into member values(user_seq.nextval,#{id},#{pw},#{nick},#{height},#{weight},#{strong})")
   public void memberinsert(MemberVO vo);
}