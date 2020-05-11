package kr.or.bit.dto;
/*
 *
 create table memo(
	id varchar2(15) not null,
	email varchar2(20) not null,
	content varchar2(100)
); 
 
 데이터 1건(row) 담을 수 있는 클래스 
 */

public class memo {
	private String id;
	private String email;
	private String content;
	
	public memo() {		
	}

	@Override
	public String toString() {
		return "memo [id=" + id + ", email=" + email + ", content=" + content + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
