package kr.two.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 게시물(Object) ->번호,제목,내용,작성자,작성일,조회수.... 등
// Lombok(롬복) API
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	
	private int idx;
	private String userId;
	private String title;
	private String content;
	private String writer;
	private String indate;
	private int count;


}
