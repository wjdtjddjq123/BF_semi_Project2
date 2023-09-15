package Login;

public class SignBean {
	private final String Id = " ";
	private final String passWd = " ";
	
	private String id; //아이디
	private String passwd; //패스워드
	private String userName; // 성명
	private String birth;  		// 생년월일
	private String gitEmail;  	// 휴대폰번호
	
	
	public SignBean() {
		
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String gitEmail() {
		return gitEmail;
	}
	public void setgitEmail(String gitEmail) {
		this.gitEmail = gitEmail;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getPassWd() {
		return passWd;
	}
	
	
	
}