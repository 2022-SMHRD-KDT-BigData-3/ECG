package kr.two.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private int seq ;
	private String id;
	private String pw;
	private String nick;
	private String height;
	private String weight;
	private String strong;
}

