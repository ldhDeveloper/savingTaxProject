package member.model.vo;

import java.sql.Date;

public class Grade {
	private int gno;
	private String sdate;
	private String edate;
	/*private Date sdate;
	private Date edate;*/
	private int pno;
	private String gtype;
	
	public Grade(){}

	public Grade(int gno, String sdate, String edate, int pno, String gtype) {
		super();
		this.gno = gno;
		this.sdate = sdate;
		this.edate = edate;
		this.pno = pno;
		this.gtype = gtype;
	}

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getGtype() {
		return gtype;
	}

	public void setGtype(String gtype) {
		this.gtype = gtype;
	}

	@Override
	public String toString() {
		return "Grade [gno=" + gno + ", sdate=" + sdate + ", edate=" + edate + ", pno=" + pno + ", gtype=" + gtype
				+ "]";
	}
}
