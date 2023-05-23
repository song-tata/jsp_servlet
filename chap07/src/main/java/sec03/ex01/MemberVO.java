package sec03.ex01;

import java.sql.Date;

public class MemberVO {
	
	private Integer custid;
	private String idnumber;
	private String name;
	private String address;
	private String phone;
	
	public MemberVO() {
		System.out.println("마당 db 생성자 호출");
	}

	public Integer getCustid() {
		return custid;
	}

	public void setCustid(Integer _custid) {
		this.custid = _custid;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	
}
