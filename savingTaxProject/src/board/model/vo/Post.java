package board.model.vo;

import java.sql.Date;

public class Post {

private int	post_no;
private String	post_nm;
private Date post_date;
private String post_con;
private int	board_no;
private int	p_no;
private int	post_ref_no;
private int	post_lev;
private int	post_seq;


public int getPost_no() {
	return post_no;
}
public void setPost_no(int post_no) {
	this.post_no = post_no;
}
public String getPost_nm() {
	return post_nm;
}
public void setPost_nm(String post_nm) {
	this.post_nm = post_nm;
}
public Date getPost_date() {
	return post_date;
}
public void setPost_date(Date post_date) {
	this.post_date = post_date;
}
public String getPost_con() {
	return post_con;
}
public void setPost_con(String post_con) {
	this.post_con = post_con;
}
public int getBoard_no() {
	return board_no;
}
public void setBoard_no(int board_no) {
	this.board_no = board_no;
}
public int getP_no() {
	return p_no;
}
public void setP_no(int p_no) {
	this.p_no = p_no;
}
public int getPost_ref_no() {
	return post_ref_no;
}
public void setPost_ref_no(int post_ref_no) {
	this.post_ref_no = post_ref_no;
}
public int getPost_lev() {
	return post_lev;
}
public void setPost_lev(int post_lev) {
	this.post_lev = post_lev;
}
public int getPost_seq() {
	return post_seq;
}
public void setPost_seq(int post_seq) {
	this.post_seq = post_seq;
}
public Post() {
	super();
}
public Post(int post_no, String post_nm, Date post_date, String post_con, int board_no, int p_no, int post_ref_no,
		int post_lev, int post_seq) {
	super();
	this.post_no = post_no;
	this.post_nm = post_nm;
	this.post_date = post_date;
	this.post_con = post_con;
	this.board_no = board_no;
	this.p_no = p_no;
	this.post_ref_no = post_ref_no;
	this.post_lev = post_lev;
	this.post_seq = post_seq;
}

}
