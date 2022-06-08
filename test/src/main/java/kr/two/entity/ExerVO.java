package kr.two.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 게시물(Object) ->번호,제목,내용,작성자,작성일,조회수.... 등
// Lombok(롬복) API
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExerVO {
	private String e_name;
	private String e_number;
	private int e_kind;
	private int e_seq;


}
