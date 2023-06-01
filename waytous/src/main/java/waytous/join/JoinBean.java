package waytous.join;

public class JoinBean {
	private String u_id;
	private String u_pwd;
	private String u_email;

	public JoinBean() {
	}

	public JoinBean(String u_id, String u_pwd, String u_email) {
		this.u_id = u_id;
		this.u_pwd = u_pwd;
		this.u_email = u_email;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

}
