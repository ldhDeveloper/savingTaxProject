package board.model.vo;

import java.sql.*;
public class Board {
private int post_no;
private String post_title;
private String post_contents;
private Date post_date;
private int board_no;
private int up_post_no;
private int writer_no;
	public Board(){}
	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_contents() {
		return post_contents;
	}
	public void setPost_contents(String post_contents) {
		this.post_contents = post_contents;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getUp_post_no() {
		return up_post_no;
	}
	public void setUp_post_no(int up_post_no) {
		this.up_post_no = up_post_no;
	}
	public int getWriter_no() {
		return writer_no;
	}
	public void setWriter_no(int writer_no) {
		this.writer_no = writer_no;
	}
	public Board(int post_no, String post_title, String post_contents, Date post_date, int board_no, int up_post_no,
			int writer_no) {
		super();
		this.post_no = post_no;
		this.post_title = post_title;
		this.post_contents = post_contents;
		this.post_date = post_date;
		this.board_no = board_no;
		this.up_post_no = up_post_no;
		this.writer_no = writer_no;
	}
	@Override
	public String toString() {
		return   post_no + ", " + post_title + ", " + post_contents + ", " + post_date + ", " + board_no
				+ ", " + up_post_no + ", " + writer_no ;
	}
	
	
	
}
