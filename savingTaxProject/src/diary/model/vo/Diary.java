package diary.model.vo;

import java.sql.Date;

public class Diary {

private int dno;
private String atype;
private Date ddate;
private String pname;
private String anm;
private int writerPno;
private String product;
private int cost;
private String billing;
private String proof_type;



public int getDno() {
	return dno;
}
public void setDno(int dno) {
	this.dno = dno;
}
public String getAtype() {
	return atype;
}
public void setAtype(String atype) {
	this.atype = atype;
}
public Date getDdate() {
	return ddate;
}
public void setDdate(Date ddate) {
	this.ddate = ddate;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getAnm() {
	return anm;
}
public void setAnm(String anm) {
	this.anm = anm;
}
public String getProduct() {
	return product;
}
public void setProduct(String product) {
	this.product = product;
}
public int getCost() {
	return cost;
}
public void setCost(int cost) {
	this.cost = cost;
}
public String getBilling() {
	return billing;
}
public void setBilling(String billing) {
	this.billing = billing;
}
public String getProof_type() {
	return proof_type;
}
public void setProof_type(String proof_type) {
	this.proof_type = proof_type;
}

public int getWriterPno() {
	return writerPno;
}
public void setWriterPno(int writerPno) {
	this.writerPno = writerPno;
}

public Diary(){}
public Diary(int dno, String atype, Date ddate, String pname, String anm, int writerPno, String product, int cost,
		String billing, String proof_type) {
	super();
	this.dno = dno;
	this.atype = atype;
	this.ddate = ddate;
	this.pname = pname;
	this.anm = anm;
	this.writerPno = writerPno;
	this.product = product;
	this.cost = cost;
	this.billing = billing;
	this.proof_type = proof_type;
}
@Override
public String toString() {
	return "Diary [dno=" + dno + ", atype=" + atype + ", ddate=" + ddate + ", pname=" + pname + ", anm=" + anm
			+ ", writerPno=" + writerPno + ", product=" + product + ", cost=" + cost + ", billing=" + billing
			+ ", proof_type=" + proof_type + "]";
}







}
