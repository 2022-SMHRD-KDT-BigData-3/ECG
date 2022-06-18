package kr.two.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.two.entity.DiaryVO;
import kr.two.entity.ECGVO;
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
	
	@Select("select * from member where id =#{id}")
	public MemberVO login2(MemberVO vo);
	
	@Select("select * from diary where id=#{id} and checkdate=#{checkdate} and rownum =1 order by 1 desc")
	public DiaryVO diaryselect(@Param("id")String id,@Param("checkdate")String checkdate);
	
	@Select("select * from diary where id=#{id} and checkdate=to_char(sysdate,'yyyy.mm.dd') and rownum=1 order by checkdate desc")
	public DiaryVO diaryselect2(@Param("id")String id);
	
	@Insert("insert into diary values(#{id},to_char(sysdate,'yyyy.mm.dd'),#{extime},#{list},#{strong},#{danger},#{min},#{max},#{cal})")
	public void diaryinsert(DiaryVO vo);
	
	@Update("update member set nick= #{nick}, pw=#{pw}, age=#{age}, weight=#{weight}, height=#{height}")
	public void updateservice(MemberVO vo);
	
	@Select("select * from diary where id=#{id} and checkdate between sysdate-7 and sysdate order by checkdate desc")
	public List<DiaryVO> chartselect(MemberVO vo);
	   
	@Select("select * from diary where id=#{id} and checkdate between sysdate-14 and sysdate-7 order by checkdate desc")
	public List<DiaryVO> chartselect2(MemberVO vo);
	   
	@Select("select * from diary where id=#{id} and (checkdate = (last_day(to_date(sysdate)))-29 or checkdate = (last_day(to_date(sysdate)))-22 or checkdate = (last_day(to_date(sysdate)))-15 or checkdate = (last_day(to_date(sysdate)))-8 or checkdate = (last_day(to_date(sysdate)))-1) order by checkdate ASC")
	public List<DiaryVO> chartlist(MemberVO vo);
	
	@Select("select * from ecg where id=#{id} and rownum =1 order by ecg ASC")
	public ECGVO ecgselect(MemberVO vo);
}