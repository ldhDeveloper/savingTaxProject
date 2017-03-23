package member.model.vo;

import java.sql.Date;

public class Party implements java.io.Serializable{

	private int pno;
	private String pname;
	private int category;
	private String id;
	private String pwd;
	private String phone;
	private String email;
	private String id_no;
	private String cname;
	private String cno;
	private String paddress;
	private String caddress;
	private String ctype;
	private String cstatus;
	private String position;
	private Date oday;
	private int wno;
	private int taxtype;
	private int notax_yn;
	private String president;
	private int foreginer_yn;
	private int emp_type;
	private Date join_date;
	private int busi_type;
	private int to_no;
	private int gType;

	public Party() {
		super();
	}


	public int getPno() {
		return pno;
	}


	public void setPno(int pno) {
		this.pno = pno;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public int getCategory() {
		return category;
	}


	public void setCategory(int category) {
		this.category = category;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getId_no() {
		return id_no;
	}


	public void setId_no(String id_no) {
		this.id_no = id_no;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getCno() {
		return cno;
	}


	public void setCno(String cno) {
		this.cno = cno;
	}


	public String getPaddress() {
		return paddress;
	}


	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}


	public String getCaddress() {
		return caddress;
	}


	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}


	public String getCtype() {
		return ctype;
	}


	public void setCtype(String ctype) {
		this.ctype = ctype;
	}


	public String getCstatus() {
		return cstatus;
	}


	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public Date getOday() {
		return oday;
	}


	public void setOday(Date oday) {
		this.oday = oday;
	}


	public int getWno() {
		return wno;
	}


	public void setWno(int wno) {
		this.wno = wno;
	}


	public int getTaxtype() {
		return taxtype;
	}


	public void setTaxtype(int taxtype) {
		this.taxtype = taxtype;
	}


	public int getNotax_yn() {
		return notax_yn;
	}


	public void setNotax_yn(int notax_yn) {
		this.notax_yn = notax_yn;
	}


	public String getPresident() {
		return president;
	}


	public void setPresident(String president) {
		this.president = president;
	}


	public int getForeginer_yn() {
		return foreginer_yn;
	}


	public void setForeginer_yn(int foreginer_yn) {
		this.foreginer_yn = foreginer_yn;
	}


	public int getEmp_type() {
		return emp_type;
	}


	public void setEmp_type(int emp_type) {
		this.emp_type = emp_type;
	}


	public Date getJoin_date() {
		return join_date;
	}


	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}


	public int getBusi_type() {
		return busi_type;
	}


	public void setBusi_type(int busi_type) {
		this.busi_type = busi_type;
	}


	public int getTo_no() {
		return to_no;
	}


	public void setTo_no(int to_no) {
		this.to_no = to_no;
	}



	public int getgType() {
		return gType;
	}


	public void setgType(int gType) {
		this.gType = gType;
	}


	public Party(int pno, String pname, int category, String id, String pwd, String phone, String email, String id_no,
			String cname, String cno, String paddress, String caddress, String ctype, String cstatus, String position,
			Date oday, int wno, int taxtype, int notax_yn, String president, int foreginer_yn, int emp_type,
			Date join_date, int busi_type, int to_no, int gType) {
		super();
		this.pno = pno;
		this.pname = pname;
		this.category = category;
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.id_no = id_no;
		this.cname = cname;
		this.cno = cno;
		this.paddress = paddress;
		this.caddress = caddress;
		this.ctype = ctype;
		this.cstatus = cstatus;
		this.position = position;
		this.oday = oday;
		this.wno = wno;
		this.taxtype = taxtype;
		this.notax_yn = notax_yn;
		this.president = president;
		this.foreginer_yn = foreginer_yn;
		this.emp_type = emp_type;
		this.join_date = join_date;
		this.busi_type = busi_type;
		this.to_no = to_no;
		this.gType = gType;
	}

	@Override
	public String toString() {
		return "Party [pno=" + pno + ", pname=" + pname + ", category=" + category + ", id=" + id + ", pwd=" + pwd
				+ ", phone=" + phone + ", email=" + email + ", id_no=" + id_no + ", cname=" + cname + ", cno=" + cno
				+ ", paddress=" + paddress + ", caddress=" + caddress + ", ctype=" + ctype + ", cstatus=" + cstatus
				+ ", position=" + position + ", oday=" + oday + ", wno=" + wno + ", taxtype=" + taxtype + ", notax_yn="
				+ notax_yn + ", president=" + president + ", foreginer_yn=" + foreginer_yn + ", emp_type=" + emp_type
				+ ", join_date=" + join_date + ", busi_type=" + busi_type + ", to_no=" + to_no + "]";
	}
	

	
}
