package diary.model.vo;

import java.sql.Date;

public class Diary {

	private int dno;
	private String atype;
	private Date ddate;
	private String pname;
	private String anm;
	private String product;
	private int cost;
	private String billing;
	private String proof_type;
	private int sno;

	public Diary() {
	}

	public Diary(int dno, String atype, Date ddate, String pname, String anm, String product, int cost, String billing,
			String proof_type, int sno) {
		super();
		this.dno = dno;
		this.atype = atype;
		this.ddate = ddate;
		this.pname = pname;
		this.anm = anm;
		this.product = product;
		this.cost = cost;
		this.billing = billing;
		this.proof_type = proof_type;
		this.sno = sno;
	}

	public int getDno() {
		return dno;
	}

	public String getAtype() {
		return atype;
	}

	public Date getDdate() {
		return ddate;
	}

	public String getPname() {
		return pname;
	}

	public String getAnm() {
		return anm;
	}

	public String getProduct() {
		return product;
	}

	public int getCost() {
		return cost;
	}

	public String getBilling() {
		return billing;
	}

	public String getProof_type() {
		return proof_type;
	}

	public int getSno() {
		return sno;
	}

	public void setDno(int dno) {
		this.dno = dno;
	}

	public void setAtype(String atype) {
		this.atype = atype;
	}

	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public void setAnm(String anm) {
		this.anm = anm;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public void setBilling(String billing) {
		this.billing = billing;
	}

	public void setProof_type(String proof_type) {
		this.proof_type = proof_type;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	@Override
	public String toString() {
		return "Diary [dno=" + dno + ", atype=" + atype + ", ddate=" + ddate + ", pname=" + pname + ", anm=" + anm
				+ ", product=" + product + ", cost=" + cost + ", billing=" + billing + ", proof_type=" + proof_type
				+ ", sno=" + sno + "]";
	}
	
	

}
