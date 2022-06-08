package kr.two.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.two.entity.ExerVO;
import kr.two.entity.MemberVO;
            //BoardDAO  // BoardDAO dao = new BoardDAO();
@Mapper // mybatis API
public interface ProjectMapper { // new BoardMapper();
   // DB연결을 설정파일(xml)에서 한다.

	
	@Select("select * from member where id =#{id}")
	public MemberVO edit(MemberVO vo);
	@Select("select * from member where id =#{id} and pw =#{pw}")
	public MemberVO login(MemberVO vo);
	@Insert("insert into member values(user_seq.nextval,#{id},#{pw},#{nick},#{height},#{weight},#{strong})")
	public void memberinsert(MemberVO vo);
	@Select("select * from exercise where e_kind=#{chocie}")
	public List<ExerVO> exerlist(int chocie);
}