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
	private int height;
	private int weight;
	private int age;
}

