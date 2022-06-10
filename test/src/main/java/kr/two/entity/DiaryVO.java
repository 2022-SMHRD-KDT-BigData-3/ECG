package kr.two.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DiaryVO {
	private String id;
	private String checkdate;
	private String time;
	private String list;
	private int strong;
	private int weight;
	private int height;
	private int danger;
	private int max;
	private int mean;

}
