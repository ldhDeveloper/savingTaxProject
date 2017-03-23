
package board.model.vo;

import java.sql.Date;

public class Post {

	private int post_no;
	private String post_name;
	private Date post_date;
	private String post_contents;
	private int board_no;
	private int pNo;
	private int post_ref_no;
	private int read_count;
	private String fName;
	private String refName;

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public String getPost_name() {
		return post_name;
	}

	public void setPost_name(String post_name) {
		this.post_name = post_name;
	}

	public Date getPost_date() {
		return post_date;
	}

	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}

	public String getPost_contents() {
		return post_contents;
	}

	public void setPost_contents(String post_contents) {
		this.post_contents = post_contents;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getPost_ref_no() {
		return post_ref_no;
	}

	public void setPost_ref_no(int post_ref_no) {
		this.post_ref_no = post_ref_no;
	}

	public int getRead_count() {
		return read_count;
	}

	public void setRead_count(int read_count) {
		this.read_count = read_count;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getRefName() {
		return refName;
	}

	public void setRefName(String refName) {
		this.refName = refName;
	}

	public Post() {
		super();
	}

	public Post(int post_no, String post_name, Date post_date, String post_contents, int board_no, int pNo,
			int post_ref_no, int read_count, String fName, String refName) {
		super();
		this.post_no = post_no;
		this.post_name = post_name;
		this.post_date = post_date;
		this.post_contents = post_contents;
		this.board_no = board_no;
		this.pNo = pNo;
		this.post_ref_no = post_ref_no;
		this.read_count = read_count;
		this.fName = fName;
		this.refName = refName;
	}

	@Override
	public String toString() {
		return "Post [post_no=" + post_no + ", post_name=" + post_name + ", post_date=" + post_date + ", post_contents="
				+ post_contents + ", board_no=" + board_no + ", pNo=" + pNo + ", post_ref_no=" + post_ref_no
				+ ", read_count=" + read_count + ", fName=" + fName + ", refName=" + refName + "]";
	}




}