
package board.model.vo;

import java.sql.Date;

public class Post implements java.io.Serializable{
	private int postOrder;
	private int postNo;
	private String postName;
	private Date postDate;
	private String postContents;
	private int boardNo;
	private int pNo;
	private int postRefNo;
	private int readCount;
	private String fName;
	private String refName;
	private String pId;
	
	public int getPostOrder() {
		return postOrder;
	}
	public void setPostOrder(int postOrder) {
		this.postOrder = postOrder;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getPostContents() {
		return postContents;
	}
	public void setPostContents(String postContents) {
		this.postContents = postContents;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getPostRefNo() {
		return postRefNo;
	}
	public void setPostRefNo(int postRefNo) {
		this.postRefNo = postRefNo;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
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
	
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public Post() {
		super();
	}
	@Override
	public String toString() {
		return postOrder + ", " + postNo + ", " + postName + ", " + postDate + ", " + postContents + ", " + boardNo
				+ ", " + pNo + ", " + postRefNo + ", " + readCount + ", " + fName + ", " + refName + ", " + pId;
	}
	



}