package kr.two.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.two.entity.DiaryVO;
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
	
	@Insert("insert into member values(user_seq.nextval,#{id},#{pw},#{nick},#{age},#{height},#{weight})")
	public void memberinsert(MemberVO vo);
	
	@Select("select e_name from (select * from exercise order by dbms_random.value) where e_kind=#{chocie} and e_number=#{i}")
	public List<String> exerlist(@Param("chocie")int chocie,@Param("i")int i);
	
	@Select("select * from diary where id=#{id} and checkdate=#{checkdate} and rownum =1 order by 1 desc")
	public DiaryVO diaryselect(@Param("id")String id,@Param("checkdate")String checkdate);
	
	@Insert("insert into diary values(#{id},to_char(sysdate,'yyyy.mm.dd'),#{extime},#{list},#{strong},#{danger},#{min},#{max},#{cal})")
	public void diaryinsert(DiaryVO vo);
}