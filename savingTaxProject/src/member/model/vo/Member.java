package member.view.vo;

public class Member {
	private String userName;
	private String userId;
	private String userPwd;
	private String userEmail;
	
	public Member(){}

	public Member(String userName, String userId, String userPwd, String userEmail) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "Member [userName=" + userName + ", userId=" + userId + ", userPwd=" + userPwd + ", userEmail="
				+ userEmail + "]";
	}
}
