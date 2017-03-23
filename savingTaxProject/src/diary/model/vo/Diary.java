package diary.model.vo;

import java.sql.Date;

public class Diary {

private int dno;
private Date dDate;
private String product;
private int cost;
private int bill_type;
private int proof_type;
private int write_pno;
private int acc_pno;
public int getDno() {
	return dno;
}
public void setDno(int dno) {
	this.dno = dno;
}
public Date getdDate() {
	return dDate;
}
public void setdDate(Date dDate) {
	this.dDate = dDate;
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
public int getBill_type() {
	return bill_type;
}
public void setBill_type(int bill_type) {
	this.bill_type = bill_type;
}
public int getProof_type() {
	return proof_type;
}
public void setProof_type(int proof_type) {
	this.proof_type = proof_type;
}
public int getWrite_pno() {
	return write_pno;
}
public void setWrite_pno(int write_pno) {
	this.write_pno = write_pno;
}
public int getAcc_pno() {
	return acc_pno;
}
public void setAcc_pno(int acc_pno) {
	this.acc_pno = acc_pno;
}
public Diary() {
	super();
}
public Diary(int dno, Date dDate, String product, int cost, int bill_type, int proof_type, int write_pno, int acc_pno) {
	super();
	this.dno = dno;
	this.dDate = dDate;
	this.product = product;
	this.cost = cost;
	this.bill_type = bill_type;
	this.proof_type = proof_type;
	this.write_pno = write_pno;
	this.acc_pno = acc_pno;
}

}
