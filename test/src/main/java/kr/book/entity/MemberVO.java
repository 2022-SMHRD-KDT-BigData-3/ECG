package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private int seq ;
	private String Id;
	private String Pw;
	private String nick;
	private String height;
	private String weight;
	private String strong;
}

