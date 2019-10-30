package model;

import org.hibernate.validator.constraints.NotEmpty;

public class Notice {

	private Integer notice_seqno;

	@NotEmpty(message = "제목을 입력하세요.")
	private String notice_title;

	@NotEmpty(message = "글 내용을 입력하세요.")
	private String notice_content;
	
	private String notice_writer;
	
	private String notice_regist_date;

	public Integer getNotice_seqno() {
		return notice_seqno;
	}

	public void setNotice_seqno(Integer notice_seqno) {
		this.notice_seqno = notice_seqno;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNotice_regist_date() {
		return notice_regist_date;
	}

	public void setNotice_regist_date(String notice_regist_date) {
		this.notice_regist_date = notice_regist_date;
	}

}
