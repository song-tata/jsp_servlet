package sec01.ex01;

import java.sql.Timestamp;

public class MemberBean {
	private Integer num_id;
	private String name;
	private String pwd;
	private Timestamp joinDate;

	public MemberBean() {

	}

	public MemberBean(Integer num_id, String name, String pwd, Timestamp joinDate) {
		this.num_id = num_id;
		this.name = name;
		this.pwd = pwd;
		this.joinDate = joinDate;
	}

	public Integer getNum_id() {
		return num_id;
	}

	public void setNum_id(Integer num_id) {
		this.num_id = num_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Timestamp getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Timestamp joinDate) {
		this.joinDate = joinDate;
	}
	
	
}
